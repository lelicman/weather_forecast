import Domain
import Foundation

public class UseCaseProvider: Domain.UseCaseProvider {
  private let importCityRepository: ImportCityRepositoryProtocol
  private let weatherRepository: WeatherRepositoryProtocol
  private let settingsRepository: SettingsRepositoryProtocol
  private let cityRepository: CityRepositoryProtocol

  public init() {
    self.importCityRepository = ImportCityRepository()
    self.weatherRepository = WeatherRepository()
    self.settingsRepository = SettingsRepository()
    self.cityRepository = CityRepository()
  }

  public func makeImportCitiesUseCase() -> Domain.ImportCitiesUseCase {
    return ImportCitiesUseCase(repository: importCityRepository,
                               getCitiesImported: GetCitiesImportedUseCase(repository: settingsRepository),
                               setCitiesImported: SetCitiesImportedUseCase(repository: settingsRepository),
                               saveCitiesUseCase: SaveCitiesUseCase(repository: cityRepository))
  }

  public func makeGetCityWeatherUseCase() -> Domain.GetCityWeatherUseCase {
    return GetCityWeatherUseCase(repository: weatherRepository)
  }

  public func makeGetCitiesImportedUseCase() -> Domain.GetCitiesImportedUseCase {
    return GetCitiesImportedUseCase(repository: settingsRepository)
  }

  public func makeSetCitiesImportedUseCase() -> Domain.SetCitiesImportedUseCase {
    return SetCitiesImportedUseCase(repository: settingsRepository)
  }

  public func makeGetCitiesUseCase() -> Domain.GetCitiesUseCase {
    return GetCitiesUseCase(repository: cityRepository)
  }

  public func makeSaveCitiesUseCase() -> Domain.SaveCitiesUseCase {
    return SaveCitiesUseCase(repository: cityRepository)
  }
}
