import Quick
import Nimble
import Cuckoo
import Domain

@testable import WeatherForecast

class RootCoordinatorSpecs: QuickSpec {
  override func spec() {
    var sut: RootCoordinator!
    var coordinatorProvider: MockRootCoordinatorProvider!
    var splashCoordinator: MockSplashCoordinator!
    var cityListCoordinator: MockCityListCoordinator!
    var useCaseProvider: MockUseCaseProvider!
    var delegate: MockSplashCoordinatorDelegate!
    let window = MockWindow()

    beforeEach {
      useCaseProvider = MockUseCaseProvider()
      delegate = self.mockDelegate()
      splashCoordinator = self.mockSplashCoordinator(window: window, delegate: delegate)
      cityListCoordinator = self.mockCityListCoordinator(navigation: MockNavigationController())
      coordinatorProvider = self.mockCoordinatorProvider(splashCoordinator: splashCoordinator,
                                                         cityListCoordinator: cityListCoordinator)
      sut = RootCoordinator(window: window, useCaseProvider: useCaseProvider, coordinatorProvider: coordinatorProvider)
    }

    context("when coordinator starts") {
      it("creates splash coordinator") {
        sut.start()
        let windowCaptor = ArgumentCaptor<UIWindow>()
        let delegateCaptor = ArgumentCaptor<SplashCoordinatorDelegate>()
        verify(coordinatorProvider).makeSplashCoordinator(window: windowCaptor.capture(),
                                                                    delegate: delegateCaptor.capture())
        expect(windowCaptor.value) === window
        expect(delegateCaptor.value) === sut
      }

      it("adds coordinator to the child list") {
        sut.start()
        expect(sut.childCoordinators).to(haveCount(1))
        expect(sut.childCoordinators.first) === splashCoordinator
      }

      it("starts splash coordinator") {
        sut.start()
        verify(splashCoordinator).start()
      }
    }

    context("when splash coordinator completes") {
      it("removes splash coordinator from the child list and appends city list coordinator") {
        sut.splashCoordinatorCompleted(coordinator: splashCoordinator)
        expect(sut.childCoordinators).to(haveCount(1))
        expect(sut.childCoordinators.first) === cityListCoordinator
      }

      it("creates city list coordinator") {
        sut.splashCoordinatorCompleted(coordinator: splashCoordinator)
        verify(coordinatorProvider).makeCityListCoordinator(navigationController: any())
      }

      it("starts city list coordinator") {
        sut.splashCoordinatorCompleted(coordinator: splashCoordinator)
        verify(cityListCoordinator).start()
      }
    }
  }
}

private extension RootCoordinatorSpecs {
  func mockDelegate() -> MockSplashCoordinatorDelegate {
    let delegate = MockSplashCoordinatorDelegate()

    stub(delegate) { delegate in
      when(delegate).splashCoordinatorCompleted(coordinator: any()).thenDoNothing()
    }
    return delegate
  }

  func mockCoordinatorProvider(splashCoordinator: MockSplashCoordinator,
                               cityListCoordinator: MockCityListCoordinator) -> MockRootCoordinatorProvider {
    let useCaseProvider = MockUseCaseProvider()
    let provider = MockRootCoordinatorProvider(useCaseProvider: useCaseProvider)

    stub(provider) { provider in
      when(provider).makeSplashCoordinator(window: any(), delegate: any()).thenReturn(splashCoordinator)
      when(provider).makeCityListCoordinator(navigationController: any()).thenReturn(cityListCoordinator)
    }
    return provider
  }

  func mockSplashCoordinator(window: MockWindow, delegate: MockSplashCoordinatorDelegate) -> MockSplashCoordinator {
    let provider = MockUseCaseProvider()
    let coordinator = MockSplashCoordinator(window: window,
                                            delegate: delegate,
                                            coordinatorProvider: MockSplashCoordinatorProvider(useCaseProvider: provider))
    stub(coordinator) { coordinator in
      when(coordinator).start().thenDoNothing()
    }
    return coordinator
  }

  func mockCityListCoordinator(navigation: MockNavigationController) -> MockCityListCoordinator {
    let provider = MockUseCaseProvider()
    let coordinator = MockCityListCoordinator(navigationController: navigation,
                                              coordinatorProvider: MockCityListCoordinatorProvider(useCaseProvider: provider))
    stub(coordinator) { coordinator in
      when(coordinator).start().thenDoNothing()
    }
    return coordinator
  }

  func mockViewModel(action: SplashViewModelAction) -> MockSplashViewModel {
    let viewModel = MockSplashViewModel(importCitiesUseCase: MockImportCitiesUseCase())

    stub(viewModel) { viewModel in
      when(viewModel).bind(any(), any()).then { _, actionHandler in
        actionHandler(action)
      }
      when(viewModel).unbind(any()).thenDoNothing()
    }
    return viewModel
  }
}

class MockNavigationController: UINavigationController {

}
