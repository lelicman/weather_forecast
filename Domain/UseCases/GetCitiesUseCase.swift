import Foundation

public protocol GetCitiesUseCase {
  func get(with completion: @escaping (Result<[CityType]>) -> Void)
}
