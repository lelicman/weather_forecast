import Foundation
import Moya
import Domain

protocol WeatherRepositoryProtocol {
  func get(with cityId: City.Identifier, completion: @escaping (Result<CityWeatherType>) -> Void)
}

class WeatherRepository: WeatherRepositoryProtocol {
  let provider: MoyaProvider<WeatherService>
  let converter: CityWeatherConverterType

  init(provider: MoyaProvider<WeatherService> = WeatherConfig.defaultProvider(),
       converter: CityWeatherConverterType = CityWeatherConverter()) {
    self.provider = provider
    self.converter = converter
  }

  func get(with cityId: City.Identifier, completion: @escaping (Result<CityWeatherType>) -> Void) {
    let request = CityWeatherRequest(id: cityId)
    provider.request(.cityWeather(request)) { result in
      switch result {
      case let .success(moyaResponse):
          do {
            let response = try moyaResponse.map(CityWeatherResponse.self)
            completion(Result(value: self.converter.from(response)))
          } catch {
            completion(Result(error: error))
          }
      case let .failure(error):
        completion(Result(error: error))
      }
    }
  }
}
