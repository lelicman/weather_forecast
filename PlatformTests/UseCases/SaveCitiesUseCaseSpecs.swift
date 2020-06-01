import Quick
import Nimble
import Cuckoo
import Domain

@testable import Platform

class SaveCitiesUseCaseSpecs: QuickSpec {
  override func spec() {
    var sut: Platform.SaveCitiesUseCase!
    var repository: MockCityRepository!
    var expectedCities: [CityType] = []

    beforeEach {
      expectedCities = [self.mockCity(with: 1), self.mockCity(with: 2)]
      repository = self.mockCityRepository(result: Result(value: ()))
      sut = SaveCitiesUseCase(repository: repository)
    }

    it("saves cities") {
      sut.save(cities: expectedCities) { _ in }
      let argumentCaptor = ArgumentCaptor<[CityType]>()
      verify(repository, times(1)).setCities(argumentCaptor.capture(), with: any())
      expect(argumentCaptor.value).to(haveCount(2))
      expect(argumentCaptor.value?.first?.id.rawValue) == 1
      expect(argumentCaptor.value?.last?.id.rawValue) == 2
    }

    context("on success") {
      it("returns") {
        waitUntil { done in
          sut.save(cities: expectedCities) { result in
            expect(result.error).to(beNil())
            expect(result.value).to(beVoid())
            done()
          }
        }
      }
    }

    context("on failure") {
      let expectedError = someError()

      beforeEach {
        repository = self.mockCityRepository(result: Result(error: expectedError))
        sut = SaveCitiesUseCase(repository: repository)
      }

      it("returns error") {
        waitUntil { done in
          sut.save(cities: expectedCities) { result in
            expect(result.value).to(beNil())
            expect(result.error?.localizedDescription) == expectedError.localizedDescription
            done()
          }
        }
      }
    }
  }
}

private extension SaveCitiesUseCaseSpecs {
  func mockCityRepository(result: Result<Void>) -> MockCityRepository {
    let repository = MockCityRepository()

    stub(repository) { repo in
      when(repo).setCities(any(), with: any()).then { _, completion in
        completion(result)
      }
    }
    return repository
  }

  func mockCity(with id: Int) -> MockCityType {
    let city = MockCityType()
    stub(city) { stub in
      when(stub.id.get).thenReturn(MockCityType.Identifier(rawValue: id))
    }
    return city
  }
}
