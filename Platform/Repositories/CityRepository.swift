import Foundation
import Domain
import RealmSwift
import Realm

protocol CityRepositoryProtocol {
  func getCities(with completion: @escaping (Result<[CityType]>) -> Void)
  func setCities(_ cities: [CityType], with completion: @escaping (Result<Void>) -> Void)
}

class CityRepository: CityRepositoryProtocol {
  let converter: CityConverterType
  let configuration: Realm.Configuration

  init(configuration: Realm.Configuration = Realm.Configuration.defaultConfiguration,
       converter: CityConverterType = CityConverter()) {
    self.configuration = configuration
    self.converter = converter
  }

  func getCities(with completion: @escaping (Result<[CityType]>) -> Void) {
    DispatchQueue.global().async { [weak self] in
      guard let self = self else { return }
      autoreleasepool {
        do {
          let realm = try Realm(configuration: self.configuration)
          let result = realm.objects(RealmCity.self).sorted(byKeyPath: "name", ascending: true)
          let cities = self.converter.from(models: Array(result))
          completion(Result(value: cities))
        } catch {
          completion(Result(error: error))
        }
      }
    }
  }

  func setCities(_ cities: [CityType], with completion: @escaping (Result<Void>) -> Void) {
    DispatchQueue.global().async { [weak self] in
      guard let self = self else { return }
      autoreleasepool {
        do {
          let realm = try Realm(configuration: self.configuration)
          try realm.write {
            let models: [RealmCity] = cities.map { city in
              let model = RealmCity()
              model.id = city.id.rawValue
              model.name = city.name
              model.countryCode = city.countryCode
              model.latitude = city.coordinates.latitude
              model.longtitude = city.coordinates.longtitude
              return model
            }
            realm.add(models, update: .modified)
          }
          completion(Result(value: ()))
        } catch {
          completion(Result(error: error))
        }
      }
    }
  }
}
