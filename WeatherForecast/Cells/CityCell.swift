import UIKit

class CityCell: UITableViewCell, Cell {
  @IBOutlet var title: UILabel!

  func update(with model: CityPresentableModel) {
    title.text = model.name
  }
}
