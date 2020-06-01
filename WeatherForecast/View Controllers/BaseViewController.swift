import Platform
import UIKit

class BaseViewController: UIViewController, Storyboarded {
  func show(error: Error) {
    let alert = UIAlertController(title: NSLocalizedString("Error", comment: ""),
                                  message: error.localizedDescription,
                                  preferredStyle: .alert)
    alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: ""),
                                  style: .default,
                                  handler: nil))
    self.present(alert, animated: true, completion: nil)
  }
}
