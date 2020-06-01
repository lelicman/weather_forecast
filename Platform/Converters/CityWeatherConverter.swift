import Domain
import Foundation

protocol CityWeatherConverterType {
  func from(_ response: CityWeatherResponse) -> CityWeatherType
}

class CityWeatherConverter: CityWeatherConverterType {
  func from(_ response: CityWeatherResponse) -> CityWeatherType {
    let coordinates = Coordinates(
      longtitude: response.coord.lon,
      latitude: response.coord.lat
    )
    return CityWeather(coordinates: coordinates,
                       temperature: response.main.temp,
                       pressure: response.main.pressure,
                       humidity: response.main.humidity)
  }
}
