import Quick
import Nimble

@testable import Platform
import RealmSwift

class RealmSpec: QuickSpec {
  var realm: Realm!
  var inMemoryConfiguration: Realm.Configuration!
}

extension RealmSpec {
  func setupRealm() {
    inMemoryConfiguration = Realm.Configuration.defaultConfiguration
    inMemoryConfiguration.inMemoryIdentifier = NSStringFromClass(type(of: self))

    do {
      realm = try Realm(configuration: inMemoryConfiguration)
    } catch {
      fail("Unexpected error setting up Realm: \(error)")
    }
  }

  func resetRealm() {
    realm.beginWrite()
    realm.deleteAll()

    do {
      try realm.commitWrite()
    } catch {
      fail("Unexpected error reseting Realm: \(error)")
    }
  }

  func writeTransactionInRealm(actions: (Realm) -> Void) {
    realm.beginWrite()
    actions(realm)

    do {
      try realm.commitWrite()
    } catch {
      fail("Unexpected error in write transaction: \(error)")
    }
  }
}
