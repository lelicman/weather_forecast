import Platform
import UIKit

class SplashViewController: BaseViewController {
  var viewModel: SplashViewModelType!

  @IBOutlet var loadingView: UIView!
  @IBOutlet var importingLabel: UILabel!

  override func viewDidLoad() {
    super.viewDidLoad()

    configureBindings()
    configureUI()
    viewModel.postInitialActions()
    viewModel.load()
  }

  deinit {
    viewModel.unbind(self)
  }
}

private extension SplashViewController {
  func configureUI() {
    importingLabel.text = NSLocalizedString("Importing...", comment: "")
  }

  func configureBindings() {
    viewModel.bind(self) { [weak self] action in
      guard let self = self else { return }

      switch action {
      case SplashViewModelAction.isLoading(let isLoading):
        self.loadingView.isHidden = !isLoading
      case SplashViewModelAction.showError(let error):
        self.show(error: error)
      case SplashViewModelAction.completed:
        break
      default:
        break
      }
    }
  }
}
