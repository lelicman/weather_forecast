import Platform
import UIKit

class CityListViewController: BaseViewController {
  var viewModel: CityListViewModelType!

  @IBOutlet var loadingView: UIView!
  @IBOutlet var tableView: UITableView!
  @IBOutlet var searchBar: UISearchBar!

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

private extension CityListViewController {
  func configureBindings() {
    viewModel.bind(self) { [weak self] action in
      guard let self = self else { return }

      switch action {
      case CityListViewModelAction.isLoading(let isLoading):
        self.loadingView.isHidden = !isLoading
      case CityListViewModelAction.itemSelected:
        break
      case CityListViewModelAction.itemsUpdated:
        self.tableView.reloadData()
      default:
        break
      }
    }
  }

  func configureUI() {
    configureTableView()
    configureNavigationBar()
    configureSearchBar()
  }

  func configureTableView() {
    tableView.register(cell: CityCell.self)
    tableView.delegate = self
    tableView.dataSource = self
  }

  func configureSearchBar() {
    searchBar.delegate = self
  }

  func configureNavigationBar() {
    navigationItem.title = NSLocalizedString("Cities", comment: "")
  }
}

extension CityListViewController: UITableViewDataSource {
  func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return viewModel.items.count
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: CityCell.identifier()) as? CityCell,
      let model = viewModel.items[safe: indexPath.row] else {
      preconditionFailure()
    }

    cell.update(with: model)
    return cell
  }
}

extension CityListViewController: UITableViewDelegate {
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    guard let model = viewModel.items[safe: indexPath.row] else {
      preconditionFailure()
    }

    tableView.deselectRow(at: indexPath, animated: true)
    viewModel.select(item: model)
  }
}

extension CityListViewController: UISearchBarDelegate {
  func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
    searchBar.resignFirstResponder()
    viewModel.search(by: searchBar.text ?? "")
  }

  func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
    searchBar.resignFirstResponder()
    viewModel.search(by: searchBar.text ?? "")
  }
}
