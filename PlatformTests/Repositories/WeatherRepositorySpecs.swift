import Quick
import Nimble
import Moya
import Domain
import Cuckoo

@testable import Platform

class WeatherRepositorySpecs: QuickSpec {
  override func spec() {
    var sut: WeatherRepository!
    var provider: MoyaProvider<WeatherService>!
    var converter: MockCityWeatherConverterType!
    let cityIdentifier: City.Identifier = City.Identifier(rawValue: 1)
    let expectedHumidity: Double = 93
    let expectedTemperature: Double = 281.52
    let expectedPressure: Double = 1016
    let expectedLatitude: Double = 2321.315
    let expectedLongtitude: Double = 3123.313
    let expectedMinTemperature: Double = 275.0
    let expectedMaxTemperature: Double = 290.0
    let expectedFeelsLike: Double = 270.5
    var expectedWeather: MockCityWeatherType!

    beforeEach {
      let coordinates = self.mockCoordinates(longtitude: expectedLongtitude, latitude: expectedLatitude)
      expectedWeather = self.mockWeather(temperature: expectedTemperature, himidity: expectedHumidity, pressure: expectedPressure, coordinates: coordinates)
      converter = self.mockConverter(expectedWeather)
    }

    describe("get weather") {
      context("on success") {
        beforeEach {
          let response = CityWeatherResponse(coord: CoordinatesResponse(lon: expectedLongtitude,
                                                                        lat: expectedLatitude),
                                             main: MainWeatherResponse(temp: expectedTemperature,
                                                                       feels_like: expectedFeelsLike,
                                                                       temp_min: expectedMinTemperature,
                                                                       temp_max: expectedMaxTemperature,
                                                                       pressure: expectedPressure,
                                                                       humidity: expectedHumidity))
          provider = WeatherService.stub(statusCode: 200, response: AnyEncodable(response))
          sut = WeatherRepository(provider: provider, converter: converter)
        }

        it("converts response") {
          waitUntil { done in
            sut.get(with: cityIdentifier) { _ in
              let captor = ArgumentCaptor<CityWeatherResponse>()
              verify(converter).from(captor.capture())
              expect(captor.value?.coord.lat) == expectedLatitude
              expect(captor.value?.coord.lon) == expectedLongtitude
              expect(captor.value?.main.humidity) == expectedHumidity
              expect(captor.value?.main.temp) == expectedTemperature
              expect(captor.value?.main.pressure) == expectedPressure
              expect(captor.value?.main.feels_like) == expectedFeelsLike
              expect(captor.value?.main.temp_min) == expectedMinTemperature
              expect(captor.value?.main.temp_max) == expectedMaxTemperature
              done()
            }
          }
        }

        it("returns weather") {
          waitUntil { done in
            sut.get(with: cityIdentifier) { result in
              expect(result.error).to(beNil())
              expect(result.value?.humidity) == expectedHumidity
              expect(result.value?.temperature) == expectedTemperature
              expect(result.value?.pressure) == expectedPressure
              expect(result.value?.coordinates.latitude) == expectedLatitude
              expect(result.value?.coordinates.longtitude) == expectedLongtitude
              done()
            }
          }
        }
      }

      context("on failure") {
        let expectedError = someError()

        beforeEach {
          provider = WeatherService.stub(error: expectedError)
          sut = WeatherRepository(provider: provider, converter: converter)
        }

        it("returns error") {
          waitUntil { done in
            sut.get(with: cityIdentifier) { result in
              expect(result.value).to(beNil())
              expect(result.error?.localizedDescription) == expectedError.localizedDescription
            }
            done()
          }
        }
      }
    }
  }
}

private extension WeatherRepositorySpecs {
  func mockConverter(_ weather: MockCityWeatherType) -> MockCityWeatherConverterType {
    let converter = MockCityWeatherConverterType()
    stub(converter) { converter in
      when(converter).from(any()).thenReturn(weather)
    }
    return converter
  }

  func mockWeather(temperature: Double, himidity: Double, pressure: Double, coordinates: MockCoordinatesType) -> MockCityWeatherType {
    let weather = MockCityWeatherType()
    stub(weather) { weather in
      when(weather.humidity.get).thenReturn(himidity)
      when(weather.pressure.get).thenReturn(pressure)
      when(weather.temperature.get).thenReturn(temperature)
      when(weather.coordinates.get).thenReturn(coordinates)
    }
    return weather
  }

  func mockCoordinates(longtitude: Double, latitude: Double) -> MockCoordinatesType {
    let coordinates = MockCoordinatesType()
    stub(coordinates) { coordinates in
      when(coordinates.latitude.get).thenReturn(latitude)
      when(coordinates.longtitude.get).thenReturn(longtitude)
    }
    return coordinates
  }
}
