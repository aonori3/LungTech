//
//  DocumentPickerView.swift
//  lungtechapp
//
//  Created by ashley mo on 8/22/24.
//

import SwiftUI
import UIKit
import UniformTypeIdentifiers
import AVFoundation

struct DocumentPicker: UIViewControllerRepresentable {
    @Binding var selectedFileURL: URL?
    @Binding var predictionResult: String
    @Binding var showingResult: Bool  // Add a binding for showing the result view

    class Coordinator: NSObject, UIDocumentPickerDelegate {
        var parent: DocumentPicker

        init(_ parent: DocumentPicker) {
            self.parent = parent
        }

        func documentPicker(_ controller: UIDocumentPickerViewController, didPickDocumentsAt urls: [URL]) {
            parent.selectedFileURL = urls.first

            // Use guard let to safely get the file data
            guard let selectedFileURL = parent.selectedFileURL,
                  let audioData = try? Data(contentsOf: selectedFileURL) else {
                print("Failed to read file")
                return
            }

            // Now call the upload function with the file data
            parent.uploadAndProcessAudioFile(audioData: audioData)
        }
    }

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    func makeUIViewController(context: Context) -> UIDocumentPickerViewController {
        let picker = UIDocumentPickerViewController(forOpeningContentTypes: [UTType.audio])
        picker.delegate = context.coordinator
        return picker
    }

    func updateUIViewController(_ uiViewController: UIDocumentPickerViewController, context: Context) {}

    // Allows the file to be uploaded to Flask API
    func uploadAndProcessAudioFile(audioData: Data) {
        // Replace with your Flask API URL
        let url = URL(string: "https://processaudio-c7a5eb77df32.herokuapp.com/process-audio")!

        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        
        let boundary = UUID().uuidString
        request.setValue("multipart/form-data; boundary=\(boundary)", forHTTPHeaderField: "Content-Type")
        
        var body = Data()
        body.append("--\(boundary)\r\n".data(using: .utf8)!)
        body.append("Content-Disposition: form-data; name=\"file\"; filename=\"audiofile.wav\"\r\n".data(using: .utf8)!)
        body.append("Content-Type: audio/wav\r\n\r\n".data(using: .utf8)!)
        body.append(audioData)
        body.append("\r\n--\(boundary)--\r\n".data(using: .utf8)!)

        request.httpBody = body

        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                print("Error uploading file: \(error)")
                return
            }

            if let data = data {
                do {
                    // Parse the JSON response to get the result word
                    if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: String],
                       let result = json["result"] {
                        print("Prediction result: \(result)")
                        DispatchQueue.main.async {
                            self.predictionResult = result // Update the prediction result
                            self.showingResult = true // Trigger showing the result view
                        }
                    }
                } catch {
                    print("Failed to parse response: \(error)")
                }
            }
        }

        task.resume()
    }
}
