import AVFoundation

enum RecordingPermissionError: Error {
    case denied
    case undetermined
    case unknown
}

class RecordingManager {
    func checkMicrophonePermission(completion: @escaping (Result<Void, RecordingPermissionError>) -> Void) {
        switch AVAudioSession.sharedInstance().recordPermission {
        case .granted:
            completion(.success(()))
        case .denied:
            completion(.failure(.denied))
        case .undetermined:
            AVAudioSession.sharedInstance().requestRecordPermission { granted in
                DispatchQueue.main.async {
                    if granted {
                        completion(.success(()))
                    } else {
                        completion(.failure(.denied))
                    }
                }
            }
        @unknown default:
            completion(.failure(.unknown))
        }
    }
}
