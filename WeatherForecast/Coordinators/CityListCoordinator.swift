import Domain
import Foundation
import UIKit

class CityListCoordinator: Coordinator {
  let useCaseProvider: Domain.UseCaseProvider

  init(navigationController: UINavigationController, useCaseProvider: Domain.UseCaseProvider) {
    self.useCaseProvider = useCaseProvider

    super.init(navigationController: navigationController)
  }

  override func start() {
    let viewController = CityListViewController.initiate()
    let viewModel = CityListViewModel(getCitiesUseCase: useCaseProvider.makeGetCitiesUseCase())
    viewController.viewModel = viewModel

    viewModel.bind(self) { [weak self] action in
      switch action {
      case .itemSelected(let item):
        self?.toDetails(for: item)
      default:
        break
      }
    }

    navigationController?.pushViewController(viewController, animated: true)
  }
}

extension CityListCoordinator: CityDetailsCoordinatorDelegate {
  func coordinatorCompleted(coordinator: CityDetailsCoordinator) {
    childCompleted(coordinator)
    navigationController?.popViewController(animated: true)
  }
}

private extension CityListCoordinator {
  func toDetails(for city: CityType) {
    guard let navigationController = navigationController else { return }

    let coordinator = CityDetailsCoordinator(navigationController: navigationController,
                                             useCaseProvider: useCaseProvider,
                                             delegate: self)
    childStarted(coordinator)
    coordinator.start(with: city)
  }
}
