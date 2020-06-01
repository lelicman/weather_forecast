import Foundation

public protocol ImportCitiesUseCase {
  func get(with completion: @escaping (Result<Void>) -> Void)
}
