import Platform
import UIKit

class CityDetailsViewController: BaseViewController {
  var viewModel: CityWeatherDetailsViewModelType!

  @IBOutlet var loadingView: UIView!
  @IBOutlet var temperatureLabel: UILabel!
  @IBOutlet var humidityLabel: UILabel!
  @IBOutlet var pressureLabel: UILabel!
  @IBOutlet var contentView: UIView!

  private lazy var backButton: UIButton = {
    let button = UIButton()
    button.setTitle(NSLocalizedString("Back", comment: ""), for: .normal)
    button.setTitleColor(.gray, for: .normal)
    button.addTarget(self, action: #selector(backButtonPressed), for: .touchUpInside)
    return button
  }()

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

  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
  }
}

private extension CityDetailsViewController {
  func configureBindings() {
    viewModel.bind(self) { [weak self] action in
      guard let self = self else { return }

      switch action {
      case CityWeatherDetailsViewModelAction.isLoading(let isLoading):
        self.loadingView.isHidden = !isLoading
        self.contentView.isHidden = isLoading
      case CityWeatherDetailsViewModelAction.backPressed:
        self.dismiss(animated: true)
      case CityWeatherDetailsViewModelAction.cityNameUpdated(let cityName):
        self.navigationItem.title = cityName
      case CityWeatherDetailsViewModelAction.weatherUpdated(let weather):
        self.updateWeather(with: weather)
      case CityWeatherDetailsViewModelAction.showError(let error):
        self.updateWeather(with: nil)
        self.show(error: error)
      default:
        break
      }
    }
  }

  func updateWeather(with model: CityWeatherPresentableModel?) {
    self.temperatureLabel.text = model?.temperature
    self.humidityLabel.text = model?.humidity
    self.pressureLabel.text = model?.pressure
  }

  func configureUI() {
    configureNavigationBar()
  }

  func configureNavigationBar() {
    navigationItem.leftBarButtonItem = UIBarButtonItem(customView: backButton)
  }

  @objc func backButtonPressed() {
    viewModel.back()
  }
}
