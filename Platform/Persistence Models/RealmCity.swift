import Foundation
import RealmSwift

class RealmCity: Object {
  @objc dynamic var id: Int = 0
  @objc dynamic var name: String = ""
  @objc dynamic var countryCode: String = ""
  @objc dynamic var longtitude: Double = 0
  @objc dynamic var latitude: Double = 0

  override class func primaryKey() -> String? {
      return "id"
  }
}
