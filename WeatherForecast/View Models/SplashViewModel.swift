import Foundation
import Domain

enum SplashViewModelAction: Actionable {
  case isLoading(Bool)
  case completed
  case showError(Error)
}

protocol SplashViewModelType {
  func load()
}

class SplashViewModel: BaseViewModel<SplashViewModelAction>, SplashViewModelType {
  let importCitiesUseCase: ImportCitiesUseCase

  init(importCitiesUseCase: ImportCitiesUseCase) {
    self.importCitiesUseCase = importCitiesUseCase
  }

  override func postInitialActions() {
    post(.isLoading(false))
  }

  func load() {
    post(.isLoading(true))
    importCitiesUseCase.get { [weak self] result in
      DispatchQueue.main.async {
        guard let self = self else { return }
        self.post(.isLoading(false))

        if let error = result.error {
          self.post(.showError(error))
        } else {
          self.post(.completed)
        }
      }
    }
  }
}
