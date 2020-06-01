import Quick
import Nimble
import Cuckoo
import Domain

@testable import Platform

class GetCitiesUseCaseSpecs: QuickSpec {
  override func spec() {
    var sut: Platform.GetCitiesUseCase!
    var repository: MockCityRepository!
    var expectedCities: [CityType] = []

    beforeEach {
      expectedCities = [self.mockCity(with: 1), self.mockCity(with: 2)]
      repository = self.mockCityRepository(result: Result(value: expectedCities))
      sut = GetCitiesUseCase(repository: repository)
    }

    it("gets cities") {
      sut.get { _ in }

      let argumentCaptor = ArgumentCaptor<(Result<[CityType]>) -> Void>()
      verify(repository, times(1)).getCities(with: argumentCaptor.capture())
    }

    context("on success") {
      it("returns cities") {
        waitUntil { done in
          sut.get { result in
            expect(result.error).to(beNil())
            expect(result.value).to(haveCount(2))
            expect(result.value?.first?.id.rawValue) == 1
            expect(result.value?.last?.id.rawValue) == 2
            done()
          }
        }
      }
    }

    context("on failure") {
      let expectedError = someError()

      beforeEach {
        repository = self.mockCityRepository(result: Result(error: expectedError))
        sut = GetCitiesUseCase(repository: repository)
      }

      it("returns error") {
        waitUntil { done in
          sut.get { result in
            expect(result.value).to(beNil())
            expect(result.error?.localizedDescription) == expectedError.localizedDescription
            done()
          }
        }
      }
    }
  }
}

private extension GetCitiesUseCaseSpecs {
  func mockCityRepository(result: Result<[CityType]>) -> MockCityRepository {
    let repository = MockCityRepository()
    stub(repository) { repository in
      when(repository).getCities(with: any()).then { completion in
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
