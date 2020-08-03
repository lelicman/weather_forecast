import Foundation

public protocol GetCitiesUseCase {
  func get(with completion: @escaping (Result<[CityType]>) -> Void)
  func get(by text: String, completion: @escaping (Result<[CityType]>) -> Void)
}
