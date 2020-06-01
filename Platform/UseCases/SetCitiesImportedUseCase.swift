import Foundation
import Domain

class SetCitiesImportedUseCase: Domain.SetCitiesImportedUseCase {
  var repository: SettingsRepositoryProtocol

  init(repository: SettingsRepositoryProtocol) {
    self.repository = repository
  }

  func set(_ value: Bool) {
    repository.areCitiesImported = value
  }
}
