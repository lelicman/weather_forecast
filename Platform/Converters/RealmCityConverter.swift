import Domain
import Foundation

protocol RealmCityConverterType {
  func from(_ cities: [CityType]) -> [RealmCity]
}

class RealmCityConverter: RealmCityConverterType {
  func from(_ cities: [CityType]) -> [RealmCity] {
    return cities.map { city in
      let model = RealmCity()
      model.id = city.id.rawValue
      model.name = city.name
      model.countryCode = city.countryCode
      model.latitude = city.coordinates.latitude
      model.longtitude = city.coordinates.longtitude

      return model
    }
  }
}
