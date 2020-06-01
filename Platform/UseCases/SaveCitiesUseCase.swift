import Foundation
import Domain

class SaveCitiesUseCase: Domain.SaveCitiesUseCase {
  let repository: CityRepositoryProtocol

  init(repository: CityRepositoryProtocol) {
    self.repository = repository
  }

  func save(cities: [CityType], with completion: @escaping (Result<Void>) -> Void) {
    repository.setCities(cities, with: completion)
  }
}
