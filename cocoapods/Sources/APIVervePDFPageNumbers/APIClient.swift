@_exported import APIVerveCore
import Foundation

/// Main API client for PDF Page Numbers
public class PDFPageNumbersAPIClient {
    private let transport: APIVerveTransport

    /// Initialize the API client
    /// - Parameter apiKey: Your APIVerve API key from https://apiverve.com
    public init(apiKey: String) {
        self.transport = APIVerveTransport(apiKey: apiKey, apiID: "pdfpagenumbers", authMode: "cocoapods-package")
    }

    /// Execute the API request
    /// - Parameters:
    ///   - parameters: Query parameters or request body
    ///   - completion: Completion handler with Result type
    public func execute(parameters: [String: Any]? = nil, completion: @escaping (Result<APIResponse, PDFPageNumbersAPIError>) -> Void) {
        transport.post(parameters: parameters, completion: completion)
    }
}

// MARK: - Async/Await Support (iOS 13+)
@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension PDFPageNumbersAPIClient {
    /// Execute the API request using async/await
    /// - Parameter parameters: Query parameters or request body
    /// - Returns: APIResponse on success
    /// - Throws: PDFPageNumbersAPIError on failure
    public func execute(parameters: [String: Any]? = nil) async throws -> APIResponse {
        try await withCheckedThrowingContinuation { continuation in
            execute(parameters: parameters) { result in
                continuation.resume(with: result)
            }
        }
    }

    /// Execute file upload using async/await
    public func executeWithFile(fileData: Data, fileName: String, fieldName: String = "pdf", mimeType: String = "image/jpeg") async throws -> APIResponse {
        try await withCheckedThrowingContinuation { continuation in
            executeWithFile(fileData: fileData, fileName: fileName, fieldName: fieldName, mimeType: mimeType) { result in
                continuation.resume(with: result)
            }
        }
    }
}

// MARK: - File Upload Support
extension PDFPageNumbersAPIClient {
    /// Execute the API request with a file upload
    /// - Parameters:
    ///   - fileData: The file data to upload
    ///   - fileName: Name of the file
    ///   - fieldName: Form field name for the file (default: "pdf")
    ///   - mimeType: MIME type of the file (default: "image/jpeg")
    ///   - completion: Completion handler with Result type
    public func executeWithFile(fileData: Data, fileName: String, fieldName: String = "pdf", mimeType: String = "image/jpeg", completion: @escaping (Result<APIResponse, PDFPageNumbersAPIError>) -> Void) {
        transport.upload(fileData: fileData, fileName: fileName, fieldName: fieldName, mimeType: mimeType, completion: completion)
    }
}
