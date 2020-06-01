import Domain
import Foundation

protocol SplashCoordinatorDelegate: class {
  func splashCoordinatorCompleted(coordinator: SplashCoordinator)
}

class SplashCoordinator: Coordinator {
  typealias Delegate = SplashCoordinatorDelegate
  weak var delegate: Delegate?
  let useCaseProvider: Domain.UseCaseProvider

  init(window: UIWindow, delegate: Delegate, useCaseProvider: Domain.UseCaseProvider) {
    self.delegate = delegate
    self.useCaseProvider = useCaseProvider

    super.init(window: window)
  }

  override func start() {
    let viewModel = SplashViewModel(importCitiesUseCase: useCaseProvider.makeImportCitiesUseCase())
    self.start(viewModel: viewModel)
  }

  func start(viewModel: SplashViewModel) {
    viewModel.bind(self) { action in
      switch action {
      case .completed:
        self.delegate?.splashCoordinatorCompleted(coordinator: self)
      case .isLoading, .showError:
        break
      }

    }

    let viewController = SplashViewController.initiate()
    viewController.viewModel = viewModel
    window?.rootViewController = viewController
  }
}
