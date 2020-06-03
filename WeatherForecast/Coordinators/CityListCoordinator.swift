import Domain
import Foundation
import UIKit

class CityListCoordinator: Coordinator {
  let coordinatorProvider: CityListCoordinatorProviderType

  init(navigationController: UINavigationController,
       coordinatorProvider: CityListCoordinatorProviderType) {
    self.coordinatorProvider = coordinatorProvider

    super.init(navigationController: navigationController)
  }

  override func start() {
    let viewModel = coordinatorProvider.makeViewModel()
    let viewController = coordinatorProvider.makeViewController(viewModel: viewModel)

    viewModel.bind(self) { [weak self] action in
      switch action {
      case CityListViewModelAction.itemSelected(let item):
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

    let coordinator = coordinatorProvider.makeCityDetailsCoordinator(navigationController: navigationController, delegate: self)
    childStarted(coordinator)
    coordinator.start(with: city)
  }
}
