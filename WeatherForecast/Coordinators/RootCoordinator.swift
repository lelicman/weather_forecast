import Domain
import Foundation

class RootCoordinator: Coordinator {
  let useCaseProvider: Domain.UseCaseProvider
  let coordinatorProvider: RootCoordinatorProviderType

  init(window: UIWindow,
       useCaseProvider: Domain.UseCaseProvider,
       coordinatorProvider: RootCoordinatorProvider) {
    self.useCaseProvider = useCaseProvider
    self.coordinatorProvider = coordinatorProvider

    super.init(window: window)
  }

  override func start() {
    toSplashScreen()
  }
}

private extension RootCoordinator {
  func toSplashScreen() {
    guard let window = window else { fatalError() }
    let coordinator = coordinatorProvider.makeSplashCoordinator(window: window, delegate: self)
    childStarted(coordinator)
    coordinator.start()
  }

  func toCityList() {
    let navigationController = UINavigationController()
    window?.rootViewController = navigationController
    let coordinator = coordinatorProvider.makeCityListCoordinator(navigationController: navigationController)
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
