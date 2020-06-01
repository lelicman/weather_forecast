import Foundation
import Domain
import Moya

enum WeatherService {
  case cityWeather(CityWeatherRequest)
}

extension WeatherService: TargetType {
  var baseURL: URL {
    guard let url = URL(string: WeatherConfig.url) else { fatalError() }
    return url
  }

  var path: String {
    switch self {
    case .cityWeather:
      return "/weather"
    }
  }

  var method: Moya.Method {
    switch self {
    case .cityWeather:
      return .get
    }
  }

  var task: Task {
    switch self {
    case .cityWeather(let request):
      return .requestParameters(parameters: ["id": request.id.rawValue, "appid": WeatherConfig.appId],
                                encoding: URLEncoding.queryString)
    }
  }

  var sampleData: Data {
    switch self {
    case .cityWeather:
      return sampleData(from: CityWeatherResponse.sample)
    }
  }

  var headers: [String: String]? {
    return ["Content-type": "application/json"]
  }
}
