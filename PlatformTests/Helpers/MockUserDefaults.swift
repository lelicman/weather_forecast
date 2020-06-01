import Foundation

class MockUserDefaults: UserDefaults {
  var values = [String: Any]()

  override func object(forKey key: String) -> Any? {
    return values[key]
  }
}
