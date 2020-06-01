import Domain
import Foundation

protocol CityConverterType {
  func from(response: [CityResponse]) -> [CityType]
  func from(models: [RealmCity]) -> [CityType]
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
    return models.map { city in
      let coordinates = Coordinates(
        longtitude: city.longtitude,
        latitude: city.latitude
      )
      return City(
        id: City.Identifier(rawValue: city.id),
        name: city.name,
        countryCode: city.countryCode,
        coordinates: coordinates
      )
    }
  }
}
