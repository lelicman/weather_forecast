import Foundation
import Domain

class GetCitiesImportedUseCase: Domain.GetCitiesImportedUseCase {
  let repository: SettingsRepositoryProtocol

  init(repository: SettingsRepositoryProtocol) {
    self.repository = repository
  }

  func get() -> Bool {
    repository.areCitiesImported
  }
}
