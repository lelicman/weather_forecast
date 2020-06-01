@testable import Platform
import RealmSwift

@discardableResult
func createManagedCity(with id: Int, name: String, countryCode: String, longtitude: Double, latitude: Double) -> RealmCity {
  let managedCity = RealmCity()
  managedCity.id = id
  managedCity.name = name
  managedCity.countryCode = countryCode
  managedCity.longtitude = longtitude
  managedCity.latitude = latitude
  return managedCity
}
