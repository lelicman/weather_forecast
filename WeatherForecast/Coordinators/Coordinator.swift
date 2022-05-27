import Foundation
import UIKit

protocol CoordinatorType {
  var childCoordinators: [Coordinator] { get set }

  func childStarted(_ coordinator: Coordinator)
  func childCompleted(_ coordinator: Coordinator)
  func start()
}

class Coordinator: CoordinatorType {
  var navigationController: UINavigationController?
  var window: UIWindow?

  init(navigationController: UINavigationController) {
    self.navigationController = navigationController
  }

  init(window: UIWindow) {
    self.window = window
  }

  func start() {}

  var childCoordinators: [Coordinator] = []

  func childStarted(_ coordinator: Coordinator) {
    childCoordinators.append(coordinator)
  }

  func childCompleted(_ coordinator: Coordinator) {
    if let index = childCoordinators.firstIndex(where: { $0 === coordinator }) {
      childCoordinators.remove(at: index)
    }
  }
}
