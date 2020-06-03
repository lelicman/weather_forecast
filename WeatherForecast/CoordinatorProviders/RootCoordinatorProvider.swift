import Foundation
import Domain

protocol RootCoordinatorProviderType {
  func makeSplashCoordinator(window: UIWindow, delegate: SplashCoordinatorDelegate) -> SplashCoordinator
  func makeCityListCoordinator(navigationController: UINavigationController) -> CityListCoordinator
}

class RootCoordinatorProvider: RootCoordinatorProviderType {
  let useCaseProvider: Domain.UseCaseProvider

  init(useCaseProvider: Domain.UseCaseProvider) {
    self.useCaseProvider = useCaseProvider
  }

  func makeSplashCoordinator(window: UIWindow, delegate: SplashCoordinatorDelegate) -> SplashCoordinator {
    let coordinatorProvider = makeSplashCoordinatorProvider()
    return SplashCoordinator(window: window,
                             delegate: delegate,
                             coordinatorProvider: coordinatorProvider)
  }

  func makeCityListCoordinator(navigationController: UINavigationController) -> CityListCoordinator {
    let coordinatorProvider = makeCityListCoordinatorProvider()
    return CityListCoordinator(navigationController: navigationController,
                               coordinatorProvider: coordinatorProvider)
  }
}

private extension RootCoordinatorProvider {
  func makeSplashCoordinatorProvider() -> SplashCoordinatorProviderType {
    SplashCoordinatorProvider(useCaseProvider: useCaseProvider)
  }

  func makeCityListCoordinatorProvider() -> CityListCoordinatorProviderType {
    CityListCoordinatorProvider(useCaseProvider: useCaseProvider)
  }
}
