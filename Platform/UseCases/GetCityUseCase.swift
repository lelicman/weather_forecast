import Foundation
import Domain

class GetCityUseCase: Domain.GetCityUseCase {
  let repository: CityRepositoryProtocol

  init(repository: CityRepositoryProtocol) {
    self.repository = repository
  }

  func get(by id: CityType.Identifier, completion: @escaping (Result<CityType>) -> Void) {
    repository.get(by: id, completion: completion)
  }
}
