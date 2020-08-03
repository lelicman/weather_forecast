import Quick
import Nimble
import Cuckoo
import Domain

@testable import Platform

class CityRepositorySpecs: RealmSpec {
  override func spec() {
    var sut: CityRepository!
    var expectedManagedCities: [RealmCity] = []
    var convertedCities: [MockCityType] = []
    var converter: MockCityConverterType!

    beforeSuite {
      self.setupRealm()
    }

    afterEach {
      self.resetRealm()
    }

    beforeEach {
      let convertedCity1 = self.mockCity(with: 3, name: "Minsk", countryCode: "by", coordinates: self.mockCoordinates(with: 1.1, latitude: 2.2))
      let convertedCity2 = self.mockCity(with: 2, name: "Moscow", countryCode: "ru", coordinates: self.mockCoordinates(with: 1.2, latitude: 2.3))
      let convertedCity3 = self.mockCity(with: 1, name: "Paris", countryCode: "fr", coordinates: self.mockCoordinates(with: 1.3, latitude: 2.4))
      convertedCities = [convertedCity1, convertedCity2, convertedCity3]

      converter = self.mockCityConverter(convertedCities)

      sut = CityRepository(configuration: self.inMemoryConfiguration, converter: converter)
    }

    describe("get city") {
      beforeEach {
        let city1 = createManagedCity(with: 1, name: "Paris", countryCode: "fr", longtitude: 1.3, latitude: 2.4)
        let city2 = createManagedCity(with: 2, name: "Moscow", countryCode: "ru", longtitude: 1.2, latitude: 2.3)
        let city3 = createManagedCity(with: 3, name: "Minsk", countryCode: "by", longtitude: 1.1, latitude: 2.2)
        expectedManagedCities = [city1, city2, city3]

        self.writeTransactionInRealm { realm in
          realm.add(expectedManagedCities)
        }
      }

      context("when getting city") {
        beforeEach {
          let convertedCity = self.mockCity(with: 3, name: "Minsk", countryCode: "by", coordinates: self.mockCoordinates(with: 1.1, latitude: 2.2))

          converter = self.mockCityConverter(convertedCity)

          sut = CityRepository(configuration: self.inMemoryConfiguration, converter: converter)
        }

        context("and city exists") {
          it("returns converted city") {
            waitUntil { done in
              sut.get(by: 3) { result in
                expect(result.error).to(beNil())
                expect(result.value?.id.rawValue) == convertedCities.first?.id.rawValue
                done()
              }
            }
          }

          it("converts managed object") {
            waitUntil { done in
              sut.get(by: 3) { _ in
                let captor = ArgumentCaptor<RealmCity>()
                verify(converter).from(model: captor.capture())
                expect(captor.value?.id) == convertedCities.first?.id.rawValue
                done()
              }
            }
          }
        }

        context("and city does not exist") {
          it("returns cityNotFound error") {
            waitUntil { done in
              sut.get(by: 4) { result in
                expect(result.error?.localizedDescription) == CityRepositoryError.cityNotFound.localizedDescription
                done()
              }
            }
          }
        }
      }
    }

    describe("get cities") {
      beforeEach {
        let city1 = createManagedCity(with: 1, name: "Paris", countryCode: "fr", longtitude: 1.3, latitude: 2.4)
        let city2 = createManagedCity(with: 2, name: "Moscow", countryCode: "ru", longtitude: 1.2, latitude: 2.3)
        let city3 = createManagedCity(with: 3, name: "Minsk", countryCode: "by", longtitude: 1.1, latitude: 2.2)
        expectedManagedCities = [city1, city2, city3]

        self.writeTransactionInRealm { realm in
          realm.add(expectedManagedCities)
        }
      }

      context("when getting cities") {
        it("returns converted cities") {
          waitUntil { done in
            sut.getCities { result in
              expect(result.error).to(beNil())
              expect(result.value).to(haveCount(3))
              expect(result.value?.first?.id.rawValue) == convertedCities.first?.id.rawValue
              expect(result.value?[1].id.rawValue) == convertedCities[1].id.rawValue
              expect(result.value?.last?.id.rawValue) == convertedCities.last?.id.rawValue
              done()
            }
          }
        }

        it("converts managed objects returned ordered by name in ascending order") {
          waitUntil { done in
            sut.getCities { _ in
              let captor = ArgumentCaptor<[RealmCity]>()
              verify(converter).from(models: captor.capture())
              expect(captor.value).to(haveCount(convertedCities.count))
              expect(captor.value?.first?.id) == convertedCities.first?.id.rawValue
              expect(captor.value?[1].id) == convertedCities[1].id.rawValue
              expect(captor.value?.last?.id) == convertedCities.last?.id.rawValue
              done()
            }
          }
        }
      }

      context("when getting cities filtered by name") {
        beforeEach {
          let convertedCity1 = self.mockCity(with: 3, name: "Minsk", countryCode: "by", coordinates: self.mockCoordinates(with: 1.1, latitude: 2.2))
          let convertedCity2 = self.mockCity(with: 2, name: "Moscow", countryCode: "ru", coordinates: self.mockCoordinates(with: 1.2, latitude: 2.3))
          convertedCities = [convertedCity1, convertedCity2]

          converter = self.mockCityConverter(convertedCities)

          sut = CityRepository(configuration: self.inMemoryConfiguration, converter: converter)
        }

        it("returns converted cities") {
          waitUntil { done in
            sut.getCities(by: "m") { result in
              expect(result.error).to(beNil())
              expect(result.value).to(haveCount(2))
              expect(result.value?.first?.id.rawValue) == convertedCities.first?.id.rawValue
              expect(result.value?.last?.id.rawValue) == convertedCities.last?.id.rawValue
              done()
            }
          }
        }

        it("converts managed objects returned ordered by name in ascending order") {
          waitUntil { done in
            sut.getCities(by: "m") { _ in
              let captor = ArgumentCaptor<[RealmCity]>()
              verify(converter).from(models: captor.capture())
              expect(captor.value).to(haveCount(convertedCities.count))
              expect(captor.value?.first?.id) == convertedCities.first?.id.rawValue
              expect(captor.value?.last?.id) == convertedCities.last?.id.rawValue
              done()
            }
          }
        }
      }
    }

    describe("save cities") {
      context("when saving cities") {
        it("returns without error") {
          waitUntil { done in
            sut.setCities(convertedCities) { result in
              expect(result.error).to(beNil())
              expect(result.value).to(beVoid())
              done()
            }
          }
        }

        it("returns saved objects") {
          waitUntil { done in
            sut.setCities(convertedCities) { _ in
              sut.getCities { _ in
                let captor = ArgumentCaptor<[RealmCity]>()
                verify(converter).from(models: captor.capture())
                expect(captor.value).to(haveCount(convertedCities.count))
                expect(captor.value?.first?.id) == convertedCities.first?.id.rawValue
                expect(captor.value?[1].id) == convertedCities[1].id.rawValue
                expect(captor.value?.last?.id) == convertedCities.last?.id.rawValue
                done()
              }
            }
          }
        }
      }
    }
  }
}

private extension CityRepositorySpecs {
  func mockCityConverter(_ cities: [MockCityType]) -> MockCityConverterType {
    let converter = MockCityConverterType()
    stub(converter) { converter in
      when(converter.from(models: any())).thenReturn(cities)
    }
    return converter
  }

  func mockCityConverter(_ city: MockCityType) -> MockCityConverterType {
    let converter = MockCityConverterType()
    stub(converter) { converter in
      when(converter.from(model: any())).thenReturn(city)
    }
    return converter
  }

  func mockRealmCityConverter(_ models: [RealmCity]) -> MockRealmCityConverterType {
    let converter = MockRealmCityConverterType()
    stub(converter) { converter in
      when(converter).from(any()).thenReturn(models)
    }
    return converter
  }

  func mockCity(with id: Int, name: String, countryCode: String, coordinates: MockCoordinatesType) -> MockCityType {
    let city = MockCityType()
    stub(city) { stub in
      when(stub.id.get).thenReturn(MockCityType.Identifier(rawValue: id))
      when(stub.name.get).thenReturn(name)
      when(stub.countryCode.get).thenReturn(name)
      when(stub.coordinates.get).thenReturn(coordinates)
    }
    return city
  }

  func mockCoordinates(with longtitude: Double, latitude: Double) -> MockCoordinatesType {
    let coordinates = MockCoordinatesType()
    stub(coordinates) { stub in
      when(stub.longtitude.get).thenReturn(longtitude)
      when(stub.latitude.get).thenReturn(latitude)
    }
    return coordinates
  }
}

extension RealmCity: Matchable {
  public var matcher: ParameterMatcher<RealmCity> {
    return ParameterMatcher { city -> Bool in
      self.id == city.id
    }
  }
}
