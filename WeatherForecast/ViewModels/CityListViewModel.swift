import Foundation
import Domain

enum CityListViewModelAction: Actionable {
  case isLoading(Bool)
  case itemSelected(CityType)
  case itemsUpdated([CityPresentableModel])
  case showError(Error)
}

protocol CityListViewModelType: BaseViewModelType {
  var items: [CityPresentableModel] { get }

  func load()
  func select(item: CityPresentableModel)
  func search(by text: String)
}

class CityListViewModel: BaseViewModel, CityListViewModelType {
  let getCitiesUseCase: GetCitiesUseCase
  let getCityUseCase: GetCityUseCase
  let converter: CityPresentableModelConverterType

  private(set) var items: [CityPresentableModel] = [] {
    didSet {
      post(CityListViewModelAction.itemsUpdated(items))
    }
  }

  init(getCitiesUseCase: GetCitiesUseCase,
       getCityUseCase: GetCityUseCase,
       converter: CityPresentableModelConverterType = CityPresentableModelConverter()) {
    self.getCitiesUseCase = getCitiesUseCase
    self.getCityUseCase = getCityUseCase
    self.converter = converter
  }

  override func postInitialActions() {
    post(CityListViewModelAction.isLoading(false))
  }

  func load() {
    search(by: "")
  }

  func select(item: CityPresentableModel) {
    post(CityListViewModelAction.isLoading(true))
    getCityUseCase.get(by: item.id) { [weak self] result in
      DispatchQueue.main.async {
        guard let self = self else { return }
        self.post(CityListViewModelAction.isLoading(false))
        if let city = result.value {
          self.post(CityListViewModelAction.itemSelected(city))
        } else if let error = result.error {
          self.post(CityListViewModelAction.showError(error))
        }
      }
    }
  }

  func search(by text: String) {
    post(CityListViewModelAction.isLoading(true))
    getCitiesUseCase.get(by: text) { [weak self] result in
      DispatchQueue.main.async {
        guard let self = self else { return }
        self.post(CityListViewModelAction.isLoading(false))
        self.items = self.converter.from(result.value ?? [])
      }
    }
  }
}
