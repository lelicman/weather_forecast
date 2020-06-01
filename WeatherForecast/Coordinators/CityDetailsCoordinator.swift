import Domain
import Foundation
import UIKit

protocol CityDetailsCoordinatorDelegate: class {
  func coordinatorCompleted(coordinator: CityDetailsCoordinator)
}

class CityDetailsCoordinator: Coordinator {
  typealias Delegate = CityDetailsCoordinatorDelegate
  weak var delegate: Delegate?
  let useCaseProvider: Domain.UseCaseProvider

  init(navigationController: UINavigationController,
       useCaseProvider: Domain.UseCaseProvider,
       delegate: Delegate) {
    self.delegate = delegate
    self.useCaseProvider = useCaseProvider

    super.init(navigationController: navigationController)
  }

  func start(with city: CityType) {
    let viewController = CityDetailsViewController.initiate()
    let viewModel = CityWeatherDetailsViewModel(city: city,
                                                getCityWeatherUseCase: useCaseProvider.makeGetCityWeatherUseCase())
    viewController.viewModel = viewModel

    viewModel.bind(self) { [weak self] action in
      guard let self = self else { return }
      switch action {
      case .backPressed:
        self.delegate?.coordinatorCompleted(coordinator: self)
      default:
        break
      }
    }

    navigationController?.pushViewController(viewController, animated: true)
  }
}
