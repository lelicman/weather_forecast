import Domain
import Foundation

protocol CityPresentableModelConverterType {
  func from(_ cities: [CityType]) -> [CityPresentableModel]
}

struct CityPresentableModelConverter: CityPresentableModelConverterType {
  func from(_ cities: [CityType]) -> [CityPresentableModel] {
    return cities.map(convert)
  }
}

private extension CityPresentableModelConverter {
  func convert(from city: CityType) -> CityPresentableModel {
    return CityPresentableModel(id: city.id, name: city.name)
  }
}
