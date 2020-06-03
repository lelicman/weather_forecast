import Foundation
import Domain

protocol CityDetailsCoordinatorProviderType {
  func makeViewModel(with city: CityType) -> CityWeatherDetailsViewModel
  func makeViewController(viewModel: CityWeatherDetailsViewModel) -> CityDetailsViewController
}

class CityDetailsCoordinatorProvider: CityDetailsCoordinatorProviderType {
  let useCaseProvider: Domain.UseCaseProvider

  init(useCaseProvider: Domain.UseCaseProvider) {
    self.useCaseProvider = useCaseProvider
  }

  func makeViewModel(with city: CityType) -> CityWeatherDetailsViewModel {
    return CityWeatherDetailsViewModel(city: city, getCityWeatherUseCase: useCaseProvider.makeGetCityWeatherUseCase())
  }

  func makeViewController(viewModel: CityWeatherDetailsViewModel) -> CityDetailsViewController {
    let viewController = CityDetailsViewController.initiate()
    viewController.viewModel = viewModel
    return viewController
  }
}
