import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?
  var coordinator: RootCoordinator!

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

    let initialWindow = UIWindow()
    let rootCoordinator = RootCoordinator(window: initialWindow)
    rootCoordinator.start()
    initialWindow.makeKeyAndVisible()
    window = initialWindow
    coordinator = rootCoordinator

    return true
  }
}
