import Foundation

public protocol GetCityWeatherUseCase {
  func get(with cityId: City.Identifier, completion: @escaping (Result<CityWeatherType>) -> Void)
}
