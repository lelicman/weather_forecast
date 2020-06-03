import Domain
import Foundation
import UIKit

protocol CityDetailsCoordinatorDelegate: class {
  func coordinatorCompleted(coordinator: CityDetailsCoordinator)
}

class CityDetailsCoordinator: Coordinator {
  typealias Delegate = CityDetailsCoordinatorDelegate
  weak var delegate: Delegate?
  let coordinatorProvider: CityDetailsCoordinatorProviderType

  init(navigationController: UINavigationController,
       delegate: Delegate,
       coordinatorProvider: CityDetailsCoordinatorProviderType) {
    self.delegate = delegate
    self.coordinatorProvider = coordinatorProvider

    super.init(navigationController: navigationController)
  }

  func start(with city: CityType) {
    let viewModel = coordinatorProvider.makeViewModel(with: city)
    let viewController = coordinatorProvider.makeViewController(viewModel: viewModel)

    viewModel.bind(self) { [weak self] action in
      guard let self = self else { return }
      switch action {
      case CityWeatherDetailsViewModelAction.backPressed:
        self.delegate?.coordinatorCompleted(coordinator: self)
      default:
        break
      }
    }

    navigationController?.pushViewController(viewController, animated: true)
  }
}
