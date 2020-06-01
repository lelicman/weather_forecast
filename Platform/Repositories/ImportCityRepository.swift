import Foundation
import Domain

protocol ImportCityRepositoryProtocol {
  func getCities(with completion: @escaping (Result<[CityType]>) -> Void)
}

class ImportCityRepository: ImportCityRepositoryProtocol {
  enum CityRepositoryError: LocalizedError {
    case importFileIsMissing

    var errorDescription: String? {
      switch self {
      case .importFileIsMissing:
        return NSLocalizedString("Import file is missing", comment: "")
      }
    }
  }

  let converter: CityConverterType

  init(converter: CityConverterType = CityConverter()) {
    self.converter = converter
  }

  func getCities(with completion: @escaping (Result<[CityType]>) -> Void) {
    DispatchQueue.global().async {
      if let path = Bundle.main.path(forResource: "city.list", ofType: "json") {
        do {
          let data = try Data(contentsOf: URL(fileURLWithPath: path))
          let response = try JSONDecoder().decode(
            [CityResponse].self,
            from: data
          )
          let sortedResponse = response
            .filter { $0.name.count > 3 }
            .sorted { (lhs: CityResponse, rhs: CityResponse) -> Bool in
              lhs.name.lowercased() < rhs.name.lowercased()
          }
          completion(Result(value: self.converter.from(response: sortedResponse)))
        } catch {
          completion(Result(error: error))
        }
      } else {
        completion(Result(error: CityRepositoryError.importFileIsMissing))
      }
    }
  }
}
