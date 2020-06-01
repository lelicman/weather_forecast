import Foundation
import UIKit

protocol Storyboarded {
  static func nibName() -> String
  static func identifier() -> String
  static func storyboard() -> UIStoryboard
  static func initiate() -> Self
}

extension Storyboarded where Self: UIViewController {
  static func nibName() -> String {
    return String(describing: self)
  }

  static func identifier() -> String {
    return "\(nibName())Identifier"
  }

  static func storyboard() -> UIStoryboard {
    return UIStoryboard(name: "Main", bundle: Bundle.main)
  }

  static func initiate() -> Self {
    let identifier = Self.identifier()
    let storyboard = Self.storyboard()
    guard let viewController = storyboard.instantiateViewController(withIdentifier: identifier) as? Self else {
      preconditionFailure()
    }

    return viewController
  }
}
