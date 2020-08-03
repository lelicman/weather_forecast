import Foundation
import Domain

class GetCitiesUseCase: Domain.GetCitiesUseCase {
  let repository: CityRepositoryProtocol

  init(repository: CityRepositoryProtocol) {
    self.repository = repository
  }

  func get(with completion: @escaping (Result<[CityType]>) -> Void) {
    repository.getCities(with: completion)
  }

  func get(by text: String, completion: @escaping (Result<[CityType]>) -> Void) {
    repository.getCities(by: text, completion: completion)
  }
}
