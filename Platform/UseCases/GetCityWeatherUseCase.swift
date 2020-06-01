import Foundation
import Domain

class GetCityWeatherUseCase: Domain.GetCityWeatherUseCase {
  let repository: WeatherRepositoryProtocol

  init(repository: WeatherRepositoryProtocol) {
    self.repository = repository
  }

  func get(with cityId: City.Identifier, completion: @escaping (Result<CityWeatherType>) -> Void) {
    repository.get(with: cityId, completion: completion)
  }
}
