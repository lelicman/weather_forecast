import Quick
import Nimble
import Cuckoo
import Domain

@testable import WeatherForecast

class SplashCoordinatorSpecs: QuickSpec {
  override func spec() {
    var sut: SplashCoordinator!
    var viewModel: MockSplashViewModel!
    var viewController: MockSplashViewController!
    var delegate: MockSplashCoordinatorDelegate!
    var coordinatorProvider: MockSplashCoordinatorProviderType!
    let window = MockWindow()

    beforeEach {
      delegate = self.mockDelegate()
      viewModel = self.mockViewModel(action: .completed)
      viewController = MockSplashViewController()
      coordinatorProvider = self.mockCoordinatorProvider(viewModel: viewModel, viewController: viewController)
      sut = SplashCoordinator(window: window, delegate: delegate, coordinatorProvider: coordinatorProvider)
    }

    context("when coordinator starts") {
      it("creates view model") {
        sut.start()
        verify(coordinatorProvider, times(1)).makeViewModel()
      }

      it("creates view controller") {
        sut.start()
        let captor = ArgumentCaptor<SplashViewModelType>()
        verify(coordinatorProvider, times(1)).makeViewController(viewModel: captor.capture())
        expect(captor.value) === viewModel
      }

      it("sets root view controller") {
        sut.start()
        expect(window.mockedRootViewController) === viewController
      }

      context("and recevies completed action") {
        it("calls completed on delegate side") {
          sut.start()
          let captor = ArgumentCaptor<SplashCoordinator>()
          verify(delegate).splashCoordinatorCompleted(coordinator: captor.capture())
          expect(captor.value) === sut
        }
      }

      context("and receives showError action") {
        let expectedError = someError()

        beforeEach {
          viewModel = self.mockViewModel(action: .showError(expectedError))
          coordinatorProvider = self.mockCoordinatorProvider(viewModel: viewModel, viewController: viewController)
          sut = SplashCoordinator(window: window, delegate: delegate, coordinatorProvider: coordinatorProvider)
        }

        it("calls completed on delegate side") {
          sut.start()
          let captor = ArgumentCaptor<SplashCoordinator>()
          verify(delegate).splashCoordinatorCompleted(coordinator: captor.capture())
          expect(captor.value) === sut
        }
      }
    }
  }
}

private extension SplashCoordinatorSpecs {
  func mockDelegate() -> MockSplashCoordinatorDelegate {
    let delegate = MockSplashCoordinatorDelegate()

    stub(delegate) { delegate in
      when(delegate).splashCoordinatorCompleted(coordinator: any()).thenDoNothing()
    }
    return delegate
  }

  func mockCoordinatorProvider(viewModel: MockSplashViewModel, viewController: MockSplashViewController) -> MockSplashCoordinatorProviderType {
    let provider = MockSplashCoordinatorProviderType()

    stub(provider) { provider in
      viewController.viewModel = viewModel
      when(provider).makeViewModel().thenReturn(viewModel)
      when(provider).makeViewController(viewModel: any()).thenReturn(viewController)
    }
    return provider
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

class MockSplashViewController: SplashViewController {

}

class MockWindow: UIWindow {
  var mockedRootViewController: UIViewController?
  
  override var rootViewController: UIViewController? {
    get {
      mockedRootViewController
    }
    set {
      mockedRootViewController = newValue
    }
  }
}
