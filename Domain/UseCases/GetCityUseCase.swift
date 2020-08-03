import Foundation

public protocol GetCityUseCase {
  func get(by id: CityType.Identifier, completion: @escaping (Result<CityType>) -> Void)
}
