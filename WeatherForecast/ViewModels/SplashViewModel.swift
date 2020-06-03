import Foundation
import Domain

enum SplashViewModelAction: Actionable {
  case isLoading(Bool)
  case completed
  case showError(Error)
}

protocol SplashViewModelType: BaseViewModelType {
  func load()
}

class SplashViewModel: BaseViewModel, SplashViewModelType {
  typealias Action = SplashViewModelAction

  let importCitiesUseCase: ImportCitiesUseCase

  init(importCitiesUseCase: ImportCitiesUseCase) {
    self.importCitiesUseCase = importCitiesUseCase
  }

  override func postInitialActions() {
    post(SplashViewModelAction.isLoading(false))
  }

  func load() {
    post(SplashViewModelAction.isLoading(true))
    importCitiesUseCase.get { [weak self] result in
      DispatchQueue.main.async {
        guard let self = self else { return }
        self.post(SplashViewModelAction.isLoading(false))

        if let error = result.error {
          self.post(SplashViewModelAction.showError(error))
        } else {
          self.post(SplashViewModelAction.completed)
        }
      }
    }
  }
}
