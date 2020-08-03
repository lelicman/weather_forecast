import Foundation
import Domain
import RealmSwift
import Realm

enum CityRepositoryError: LocalizedError {
  case cityNotFound

  var errorDescription: String? {
      switch self {
      case .cityNotFound:
          return "City with requested id is not found"
      }
  }
}

protocol CityRepositoryProtocol {
  func getCities(with completion: @escaping (Result<[CityType]>) -> Void)
  func getCities(by text: String, completion: @escaping (Result<[CityType]>) -> Void)
  func setCities(_ cities: [CityType], with completion: @escaping (Result<Void>) -> Void)
  func get(by id: CityType.Identifier, completion: @escaping (Result<CityType>) -> Void)
}

class CityRepository: CityRepositoryProtocol {
  let converter: CityConverterType
  let configuration: Realm.Configuration

  init(configuration: Realm.Configuration = Realm.Configuration.defaultConfiguration,
       converter: CityConverterType = CityConverter()) {
    self.configuration = configuration
    self.converter = converter
  }

  func get(by id: CityType.Identifier, completion: @escaping (Result<CityType>) -> Void) {
    DispatchQueue.global().async { [weak self] in
      guard let self = self else { return }
      autoreleasepool {
        do {
          let realm = try Realm(configuration: self.configuration)
          guard let result = realm.object(ofType: RealmCity.self, forPrimaryKey: id.rawValue) else {
            completion(Result(error: CityRepositoryError.cityNotFound))
            return
          }
          let city = self.converter.from(model: result)
          completion(Result(value: city))
        } catch {
          completion(Result(error: error))
        }
      }
    }
  }

  func getCities(with completion: @escaping (Result<[CityType]>) -> Void) {
    getCities(by: "", completion: completion)
  }

  func getCities(by text: String, completion: @escaping (Result<[CityType]>) -> Void) {
    DispatchQueue.global().async { [weak self] in
      guard let self = self else { return }
      autoreleasepool {
        do {
          let realm = try Realm(configuration: self.configuration)
          let result = text.count > 0
            ? realm.objects(RealmCity.self).filter("name contains[c] %@", text).sorted(byKeyPath: "name", ascending: true)
            : realm.objects(RealmCity.self).sorted(byKeyPath: "name", ascending: true)

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
