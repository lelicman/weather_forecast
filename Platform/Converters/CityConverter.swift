import Domain
import Foundation

protocol CityConverterType {
  func from(response: [CityResponse]) -> [CityType]
  func from(models: [RealmCity]) -> [CityType]
  func from(model: RealmCity) -> CityType
}

class CityConverter: CityConverterType {
  func from(response: [CityResponse]) -> [CityType] {
    return response.map { city in
      let coordinates = Coordinates(
        longtitude: city.coord.lon,
        latitude: city.coord.lat
      )
      return City(
        id: city.id,
        name: city.name,
        countryCode: city.country,
        coordinates: coordinates
      )
    }
  }

  func from(models: [RealmCity]) -> [CityType] {
    return models.map(from(model:))
  }

  func from(model: RealmCity) -> CityType {
    let coordinates = Coordinates(
      longtitude: model.longtitude,
      latitude: model.latitude
    )
    return City(
      id: City.Identifier(rawValue: model.id),
      name: model.name,
      countryCode: model.countryCode,
      coordinates: coordinates
    )
  }
}
