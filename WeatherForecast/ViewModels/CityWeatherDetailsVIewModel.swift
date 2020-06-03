import Foundation
import Domain

enum CityWeatherDetailsViewModelAction: Actionable {
  case isLoading(Bool)
  case backPressed
  case weatherUpdated(CityWeatherPresentableModel?)
  case cityNameUpdated(String)
  case showError(Error)
}

protocol CityWeatherDetailsViewModelType: BaseViewModelType {
  func load()
  func back()
}

class CityWeatherDetailsViewModel: BaseViewModel, CityWeatherDetailsViewModelType {
  let getCityWeatherUseCase: GetCityWeatherUseCase
  let converter: CityWeatherPresentableModelConverterType
  private let city: CityType

  private var weather: CityWeatherPresentableModel? {
    didSet {
      post(CityWeatherDetailsViewModelAction.weatherUpdated(weather))
    }
  }

  init(city: CityType,
       getCityWeatherUseCase: GetCityWeatherUseCase,
       converter: CityWeatherPresentableModelConverterType = CityWeatherPresentableModelConverter()) {
    self.city = city
    self.getCityWeatherUseCase = getCityWeatherUseCase
    self.converter = converter
  }

  override func postInitialActions() {
    post(CityWeatherDetailsViewModelAction.isLoading(false))
    post(CityWeatherDetailsViewModelAction.cityNameUpdated(city.name))
  }

  func load() {
    post(CityWeatherDetailsViewModelAction.isLoading(true))
    getCityWeatherUseCase.get(with: city.id) { [weak self] result in
      DispatchQueue.main.async {
        guard let self = self else { return }
        self.post(CityWeatherDetailsViewModelAction.isLoading(false))

        if let weather = result.value {
          self.weather = self.converter.from(weather)
        } else if let error = result.error {
          self.post(CityWeatherDetailsViewModelAction.showError(error))
        }
      }
    }
  }

  func back() {
    post(CityWeatherDetailsViewModelAction.backPressed)
  }
}
