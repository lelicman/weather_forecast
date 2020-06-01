import Quick
import Nimble
import Cuckoo
import Domain

@testable import Platform

class ImportCitiesUseCaseSpecs: QuickSpec {
  override func spec() {
    var sut: Platform.ImportCitiesUseCase!
    var repository: MockImportCityRepository!
    var expectedCities: [MockCityType] = []
    var getCitiesImported: MockGetCitiesImportedUseCase!
    var setCitiesImported: MockSetCitiesImportedUseCase!
    var saveCitiesUseCase: MockSaveCitiesUseCase!

    beforeEach {
      expectedCities = [self.mockCity(with: 1), self.mockCity(with: 2)]
      repository = self.mockImportRepository(result: Result(value: expectedCities))
      getCitiesImported = self.mockGetCitiesImportedUseCase(areImported: false)
      setCitiesImported = self.mockSetCitiesImportedUseCase()
      saveCitiesUseCase = self.mockSaveCitiesUseCase(result: Result(value: ()))
      sut = ImportCitiesUseCase(repository: repository,
                                getCitiesImported: getCitiesImported,
                                setCitiesImported: setCitiesImported,
                                saveCitiesUseCase: saveCitiesUseCase)
    }

    context("when cities are already imported") {
      beforeEach {
        getCitiesImported = self.mockGetCitiesImportedUseCase(areImported: true)
        sut = ImportCitiesUseCase(repository: repository,
                                  getCitiesImported: getCitiesImported,
                                  setCitiesImported: setCitiesImported,
                                  saveCitiesUseCase: saveCitiesUseCase)
      }

      it("does not call fetching cities from the repository") {
        waitUntil { done in
          sut.get { _ in
            verify(repository, times(0)).getCities(with: any())
            done()
          }
        }
      }

      it("completes") {
        sut.get { result in
          expect(result.error).to(beNil())
          expect(result.value).to(beVoid())
        }
      }
    }

    context("when cities are not imported") {
      beforeEach {
        getCitiesImported = self.mockGetCitiesImportedUseCase(areImported: false)
        sut = ImportCitiesUseCase(repository: repository,
                                  getCitiesImported: getCitiesImported,
                                  setCitiesImported: setCitiesImported,
                                  saveCitiesUseCase: saveCitiesUseCase)
      }

      it("fetches cities from the repository") {
        waitUntil { done in
          sut.get { _ in
            verify(repository, times(1)).getCities(with: any())
            done()
          }
        }
      }

      context("on success") {
        it("sets cities imported flag") {
          waitUntil { done in
            sut.get { _ in
              verify(setCitiesImported, times(1)).set(true)
              done()
            }
          }
        }

        it("saves cities") {
          waitUntil { done in
            sut.get { _ in
              let captor = ArgumentCaptor<[CityType]>()
              verify(saveCitiesUseCase, times(1)).save(cities: captor.capture(), with: any())
              expect(captor.value).to(haveCount(expectedCities.count))
              expect(captor.value?.first?.id) == expectedCities.first?.id
              expect(captor.value?.last?.id) == expectedCities.last?.id
              done()
            }
          }
        }

        context("on success") {
          it("completes") {
            sut.get { result in
              expect(result.error).to(beNil())
              expect(result.value).to(beVoid())
            }
          }
        }

        context("on failure") {
          let expectedError = someError()

          beforeEach {
            saveCitiesUseCase = self.mockSaveCitiesUseCase(result: Result(error: expectedError))
            sut = ImportCitiesUseCase(repository: repository,
                                      getCitiesImported: getCitiesImported,
                                      setCitiesImported: setCitiesImported,
                                      saveCitiesUseCase: saveCitiesUseCase)
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

      context("on failure") {
        let expectedError = someError()

        beforeEach {
          repository = self.mockImportRepository(result: Result(error: expectedError))
          sut = ImportCitiesUseCase(repository: repository,
                                    getCitiesImported: getCitiesImported,
                                    setCitiesImported: setCitiesImported,
                                    saveCitiesUseCase: saveCitiesUseCase)
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
}

private extension ImportCitiesUseCaseSpecs {
  func mockImportRepository(result: Result<[CityType]>) -> MockImportCityRepository {
    let repository = MockImportCityRepository()
    stub(repository) { repository in
      when(repository).getCities(with: any()).then { completion in
        completion(result)
      }
    }
    return repository
  }

  func mockGetCitiesImportedUseCase(areImported: Bool) -> MockGetCitiesImportedUseCase {
    let useCase = MockGetCitiesImportedUseCase(repository: MockSettingsRepositoryProtocol())
    stub(useCase) { useCase in
      when(useCase).get().thenReturn(areImported)

    }
    return useCase
  }

  func mockSetCitiesImportedUseCase() -> MockSetCitiesImportedUseCase {
    let useCase = MockSetCitiesImportedUseCase(repository: MockSettingsRepositoryProtocol())
    stub(useCase) { useCase in
      when(useCase).set(any()).thenDoNothing()
    }
    return useCase
  }

  func mockSaveCitiesUseCase(result: Result<Void>) -> MockSaveCitiesUseCase {
    let useCase = MockSaveCitiesUseCase(repository: MockCityRepositoryProtocol())
    stub(useCase) { useCase in
      when(useCase).save(cities: any(), with: any()).then { _, completion in
        completion(result)
      }
    }
    return useCase
  }

  func mockCity(with id: Int) -> MockCityType {
    let city = MockCityType()
    stub(city) { stub in
      when(stub.id.get).thenReturn(MockCityType.Identifier(rawValue: id))
    }
    return city
  }
}
