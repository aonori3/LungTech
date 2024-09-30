import SwiftUI
import UIKit
import UniformTypeIdentifiers
import os

struct DocumentPicker: UIViewControllerRepresentable {
    @Binding var selectedFileURL: URL?
    var uploadHandler: (Data) -> Void 
    
    // Logger
    static let logger = Logger(subsystem: Bundle.main.bundleIdentifier ?? "LungTechApp", category: "DocumentPicker")
    
    class Coordinator: NSObject, UIDocumentPickerDelegate {
        var parent: DocumentPicker
        
        init(_ parent: DocumentPicker) {
            self.parent = parent
        }
        
        func documentPicker(_ controller: UIDocumentPickerViewController, didPickDocumentsAt urls: [URL]) {
            DocumentPicker.logger.debug("Document selected: \(urls)")
            guard let selectedFileURL = urls.first else { return }
            parent.selectedFileURL = selectedFileURL
            
            do {
                let audioData = try Data(contentsOf: selectedFileURL)
                DocumentPicker.logger.debug("Loaded selected audio file successfully")
                parent.uploadHandler(audioData) // Call the upload handler passed from ContentView
            } catch {
                DocumentPicker.logger.error("Error loading selected audio file: \(error.localizedDescription)")
            }
        }
        
        func documentPickerWasCancelled(_ controller: UIDocumentPickerViewController) {
            DocumentPicker.logger.info("Document picker was cancelled")
        }
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func makeUIViewController(context: Context) -> UIDocumentPickerViewController {
        let picker = UIDocumentPickerViewController(forOpeningContentTypes: [UTType.audio])
        picker.delegate = context.coordinator
        picker.allowsMultipleSelection = false
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIDocumentPickerViewController, context: Context) {}
}
