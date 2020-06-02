import Quick
import Nimble
import Cuckoo
import Domain

@testable import WeatherForecast

class SplashViewModelSpecs: QuickSpec {
  override func spec() {
    var sut: SplashViewModel!
    var useCase: MockImportCitiesUseCase!

    beforeEach {
      useCase = self.mockImportCitiesUseCase(result: Result(value: ()))
      sut = SplashViewModel(importCitiesUseCase: useCase)
    }

    describe("load") {
      context("when loading") {
        var loadingStates: [Bool] = []

        beforeEach {
          loadingStates = []
        }

        it("shows loading indicator") {
          waitUntil { done in
            sut.bind(self) { action in
              switch action {
              case .isLoading(let isLoading):
                loadingStates.append(isLoading)
              case .completed:
                done()
              default:
                break
              }
            }

            sut.load()
          }

          expect(loadingStates).to(contain(true))
        }

        it("requests import") {
          sut.load()
          verify(useCase, times(1)).get(with: any())
        }

        context("on success") {
          var isCompleted: Bool = false
          var latestLoadingState: Bool = false

          beforeEach {
            isCompleted = false
            latestLoadingState = false
          }

          it("hides loading") {
            waitUntil { done in
              sut.bind(self) { action in
                switch action {
                case .completed:
                  done()
                case .isLoading(let isLoading):
                  latestLoadingState = isLoading
                default:
                  break
                }
              }

              sut.load()
            }
            expect(latestLoadingState) == false
          }

          it("completes") {
            waitUntil { done in
              sut.bind(self) { action in
                switch action {
                case .completed:
                  isCompleted = true
                  done()
                default:
                  break
                }
              }

              sut.load()
            }
            expect(isCompleted) == true
          }
        }

        context("on failure") {
          let expectedError = someError()
          var isCompleted: Bool = false
          var receivedError: Error?
          var latestLoadingState: Bool = false

          beforeEach {
            isCompleted = false
            latestLoadingState = false
            useCase = self.mockImportCitiesUseCase(result: Result(error: expectedError))
            sut = SplashViewModel(importCitiesUseCase: useCase)
          }

          it("hides loading") {
            waitUntil { done in
              sut.bind(self) { action in
                switch action {
                case .showError:
                  done()
                case .isLoading(let isLoading):
                  latestLoadingState = isLoading
                default:
                  break
                }
              }

              sut.load()
            }
            expect(latestLoadingState) == false
          }

          it("shows error") {
            waitUntil { done in
              sut.bind(self) { action in
                switch action {
                case .showError(let error):
                  isCompleted = true
                  receivedError = error
                  done()
                default:
                  break
                }
              }

              sut.load()
            }
            expect(isCompleted) == true
            expect(receivedError?.localizedDescription) == expectedError.localizedDescription
          }
        }
      }
    }

    describe("binding") {
      context("when posting initial actions on binding") {
        it("hides loading indicator") {
          waitUntil { done in
            sut.bind(self) { action in
              switch action {
              case .isLoading(let isLoading):
                expect(isLoading) == false
                done()
              default:
                break
              }
            }
          }
        }
      }
    }
  }
}

private extension SplashViewModelSpecs {
  func mockImportCitiesUseCase(result: Result<Void>) -> MockImportCitiesUseCase {
    let useCase = MockImportCitiesUseCase()
    stub(useCase) { useCase in
      when(useCase).get(with: any()).then { completion in
        completion(result)
      }
    }
    return useCase
  }
}
