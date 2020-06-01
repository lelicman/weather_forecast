import Foundation

func someError(domain: String = "", code: Int = 0) -> NSError {
  return NSError(domain: domain, code: code, userInfo: [NSLocalizedDescriptionKey: UUID().uuidString])
}
