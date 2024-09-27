import Foundation

class AudioProcessingManager {
    private let networkManager = NetworkManager()
    
    func processAudio(audioData: Data, completion: @escaping (Result<String, Error>) -> Void) {
        networkManager.uploadAudio(audioData: audioData) { result in
            switch result {
            case .success(let prediction):
                completion(.success(prediction))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
