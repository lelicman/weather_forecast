import Foundation
import UIKit

protocol Cell {
  static func nib() -> UINib
  static func nibName() -> String
  static func identifier() -> String
  static func height() -> CGFloat
}

extension Cell {
  static func nibName() -> String {
    return String(describing: self)
  }

  static func identifier() -> String {
    return "\(nibName())Identifier"
  }

  static func nib() -> UINib {
    return UINib(nibName: nibName(), bundle: Bundle.main)
  }

  static func height() -> CGFloat {
    return CGFloat(40)
  }
}

extension UITableView {
  func register<T: UITableViewCell & Cell>(cell: T.Type) {
    register(cell.nib(), forCellReuseIdentifier: cell.identifier())
  }

  func dequeReusable<T: UITableViewCell & Cell>(cell: T.Type, indexPath: IndexPath) -> T {
    guard let cell = dequeueReusableCell(withIdentifier: cell.identifier(), for: indexPath) as? T else {
      preconditionFailure("Unable to cast cell to the desired type")
    }

    return cell
  }
}
