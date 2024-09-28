import Foundation
import os

// Define Protocol for URLSession to allow dependency injection
protocol URLSessionProtocol {
    func dataTask(with request: URLRequest, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTask
}

extension URLSession: URLSessionProtocol {}

protocol NetworkManaging {
    func uploadAudio(audioData: Data, completion: @escaping (Result<String, NetworkError>) -> Void)
}

enum NetworkError: Error, LocalizedError {
    case invalidURL
    case noData
    case invalidResponse
    case httpError(statusCode: Int)
    case decodingError
    case unknown(Error)
    
    var errorDescription: String? {
        switch self {
        case .invalidURL:
            return "The server URL is invalid."
        case .noData:
            return "No data was received from the server."
        case .invalidResponse:
            return "The server response was invalid."
        case .httpError(let statusCode):
            return "Server returned an error with status code: \(statusCode)."
        case .decodingError:
            return "Failed to decode the server response."
        case .unknown(let error):
            return error.localizedDescription
        }
    }
}

struct UploadResponse: Codable {
    let result: String
}

class NetworkManager: NetworkManaging {
    private let session: URLSessionProtocol
    private let logger = Logger(subsystem: Bundle.main.bundleIdentifier ?? "LungTechApp", category: "NetworkManager")
    
    private struct Constants {
        static let uploadURLString = "https://processaudio-c7a5eb77df32.herokuapp.com/process-audio"
        static let formFieldName = "file"
        static let fileName = "audiofile.wav"
        static let mimeType = "audio/wav"
    }
    
    init(session: URLSessionProtocol = URLSession.shared) {
        self.session = session
    }
    
    func uploadAudio(audioData: Data, completion: @escaping (Result<String, NetworkError>) -> Void) {
        guard let url = URL(string: Constants.uploadURLString) else {
            logger.error("Invalid URL: \(Constants.uploadURLString)")
            completion(.failure(.invalidURL))
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        
        let boundary = "Boundary-\(UUID().uuidString)"
        request.setValue("multipart/form-data; boundary=\(boundary)", forHTTPHeaderField: "Content-Type")
        
        // Construct multipart/form-data body
        var body = Data()
        body.append("--\(boundary)\r\n".data(using: .utf8)!)
        body.append("Content-Disposition: form-data; name=\"\(Constants.formFieldName)\"; filename=\"\(Constants.fileName)\"\r\n".data(using: .utf8)!)
        body.append("Content-Type: \(Constants.mimeType)\r\n\r\n".data(using: .utf8)!)
        body.append(audioData)
        body.append("\r\n--\(boundary)--\r\n".data(using: .utf8)!)
        
        request.httpBody = body
        
        logger.debug("Uploading audio data of size: \(audioData.count) bytes to \(url.absoluteString)")
        
        session.dataTask(with: request) { [weak self] data, response, error in
            if let error = error {
                self?.logger.error("Network error: \(error.localizedDescription)")
                completion(.failure(.unknown(error)))
                return
            }
            
            guard let httpResponse = response as? HTTPURLResponse else {
                self?.logger.error("Invalid response received.")
                completion(.failure(.invalidResponse))
                return
            }
            
            guard (200...299).contains(httpResponse.statusCode) else {
                self?.logger.error("HTTP Error with status code: \(httpResponse.statusCode)")
                completion(.failure(.httpError(statusCode: httpResponse.statusCode)))
                return
            }
            
            guard let data = data else {
                self?.logger.error("No data received from server.")
                completion(.failure(.noData))
                return
            }
            
            do {
                let uploadResponse = try JSONDecoder().decode(UploadResponse.self, from: data)
                self?.logger.debug("Upload successful. Result: \(uploadResponse.result)")
                completion(.success(uploadResponse.result))
            } catch {
                self?.logger.error("Decoding error: \(error.localizedDescription)")
                completion(.failure(.decodingError))
            }
        }.resume()
    }
}
