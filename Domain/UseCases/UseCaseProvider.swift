import Foundation

public protocol UseCaseProvider {
  func makeImportCitiesUseCase() -> ImportCitiesUseCase
  func makeGetCityWeatherUseCase() -> GetCityWeatherUseCase
  func makeGetCitiesImportedUseCase() -> GetCitiesImportedUseCase
  func makeSetCitiesImportedUseCase() -> SetCitiesImportedUseCase
  func makeGetCitiesUseCase() -> GetCitiesUseCase
  func makeGetCityUseCase() -> GetCityUseCase
  func makeSaveCitiesUseCase() -> SaveCitiesUseCase
}
