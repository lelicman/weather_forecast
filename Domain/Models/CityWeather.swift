import Foundation

public protocol CityWeatherType {
  var coordinates: CoordinatesType { get }
  var temperature: Double { get }
  var temperatureInCelsius: Double { get }
  var temperatureInKelvins: Double { get }
  var temperatureInFarenheits: Double { get }
  var pressure: Double { get }
  var humidity: Double { get }
}

public struct CityWeather: CityWeatherType {
  public let coordinates: CoordinatesType
  public let temperature: Double
  public let pressure: Double
  public let humidity: Double

  public var temperatureInCelsius: Double {
    temperature - 273.0
  }

  public var temperatureInKelvins: Double {
    temperature
  }

  public var temperatureInFarenheits: Double {
    1.8 * (temperature - 273.0) + 32.0
  }

  public init(coordinates: Coordinates, temperature: Double, pressure: Double, humidity: Double) {
    self.coordinates = coordinates
    self.temperature = temperature
    self.pressure = pressure
    self.humidity = humidity
  }
}
