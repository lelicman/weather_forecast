import Foundation
import Domain

enum CityWeatherDetailsViewModelAction: Actionable {
  case isLoading(Bool)
  case backPressed
  case weatherUpdated(CityWeatherPresentableModel?)
  case cityNameUpdated(String)
  case showError(Error)
}

protocol CityWeatherDetailsViewModelType {
  func load()
  func back()
}

class CityWeatherDetailsViewModel: BaseViewModel<CityWeatherDetailsViewModelAction>, CityWeatherDetailsViewModelType {
  let getCityWeatherUseCase: GetCityWeatherUseCase
  let converter: CityWeatherPresentableModelConverterType
  private let city: CityType

  private var weather: CityWeatherPresentableModel? {
    didSet {
      post(.weatherUpdated(weather))
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
    post(.isLoading(false))
    post(.cityNameUpdated(city.name))
  }

  func load() {
    post(.isLoading(true))
    getCityWeatherUseCase.get(with: city.id) { [weak self] result in
      DispatchQueue.main.async {
        guard let self = self else { return }
        self.post(.isLoading(false))

        if let weather = result.value {
          self.weather = self.converter.from(weather)
        } else if let error = result.error {
          self.post(.showError(error))
        }
      }
    }
  }

  func back() {
    post(.backPressed)
  }
}
