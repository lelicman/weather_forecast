import Foundation
import Domain

protocol SplashCoordinatorProviderType {
  func makeViewModel() -> SplashViewModelType
  func makeViewController(viewModel: SplashViewModelType) -> SplashViewController
}

class SplashCoordinatorProvider: SplashCoordinatorProviderType {
  let useCaseProvider: Domain.UseCaseProvider

  init(useCaseProvider: Domain.UseCaseProvider) {
    self.useCaseProvider = useCaseProvider
  }

  func makeViewModel() -> SplashViewModelType {
    return SplashViewModel(importCitiesUseCase: useCaseProvider.makeImportCitiesUseCase())
  }

  func makeViewController(viewModel: SplashViewModelType) -> SplashViewController {
    let viewController = SplashViewController.initiate()
    viewController.viewModel = viewModel
    return viewController
  }
}
