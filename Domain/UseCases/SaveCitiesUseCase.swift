import Foundation

public protocol SaveCitiesUseCase {
  func save(cities: [CityType], with completion: @escaping (Result<Void>) -> Void)
}
