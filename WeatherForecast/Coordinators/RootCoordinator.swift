import Domain
import Foundation
import Platform

class RootCoordinator: Coordinator {
  let useCaseProvider: Domain.UseCaseProvider

  override init(window: UIWindow) {
    self.useCaseProvider = Platform.UseCaseProvider()

    super.init(window: window)
  }

  override func start() {
    toSplashScreen()
  }
}

private extension RootCoordinator {
  func toSplashScreen() {
    guard let window = window else { fatalError() }
    let coordinator = SplashCoordinator(window: window, delegate: self, useCaseProvider: useCaseProvider)
    childStarted(coordinator)
    coordinator.start()
  }

  func toCityList() {
    let navigationController = UINavigationController()
    window?.rootViewController = navigationController
    let coordinator = CityListCoordinator(navigationController: navigationController, useCaseProvider: useCaseProvider)
    childStarted(coordinator)
    coordinator.start()
  }
}

extension RootCoordinator: SplashCoordinatorDelegate {
  func splashCoordinatorCompleted(coordinator: SplashCoordinator) {
    childCompleted(coordinator)
    toCityList()
  }
}
