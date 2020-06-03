import Domain
import Foundation

protocol SplashCoordinatorDelegate: class {
  func splashCoordinatorCompleted(coordinator: SplashCoordinator)
}

class SplashCoordinator: Coordinator {
  typealias Delegate = SplashCoordinatorDelegate
  weak var delegate: Delegate?
  let coordinatorProvider: SplashCoordinatorProviderType

  init(window: UIWindow,
       delegate: Delegate,
       coordinatorProvider: SplashCoordinatorProviderType) {
    self.delegate = delegate
    self.coordinatorProvider = coordinatorProvider

    super.init(window: window)
  }

  override func start() {
    let viewModel = coordinatorProvider.makeViewModel()
    let viewController = coordinatorProvider.makeViewController(viewModel: viewModel)

    viewModel.bind(self) { action in
      switch action {
      case SplashViewModelAction.completed, SplashViewModelAction.showError:
        self.delegate?.splashCoordinatorCompleted(coordinator: self)
      case SplashViewModelAction.isLoading:
        break
      default:
        break
      }
    }

    window?.rootViewController = viewController
  }
}
