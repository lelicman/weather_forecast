import Foundation

protocol Actionable {}

class BaseViewModel<Action: Actionable> {
  typealias ActionHandler = ((Action) -> Void)

  private var actionHandlers: [ObjectIdentifier: [ActionHandler]] = [:]

  init() {}

  func bind(_ object: AnyObject, _ handler: @escaping ActionHandler) {
    let identifier = ObjectIdentifier(object)
    var existingActionHandlers = actionHandlers[identifier] ?? []
    existingActionHandlers.append(handler)
    actionHandlers[identifier] = existingActionHandlers
    postInitialActions()
  }

  func postInitialActions() {}

  func unbind(_ object: AnyObject) {
    let identifier = ObjectIdentifier(object)
    actionHandlers.removeValue(forKey: identifier)
  }

  func post(_ action: Action) {
    actionHandlers.values.flatMap { $0 }.forEach { element in
      DispatchQueue.main.async {
        element(action)
      }
    }
  }

  func post(_ action: Action, to object: AnyObject) {
    DispatchQueue.main.async { [weak self] in
      let identifier = ObjectIdentifier(object)
      guard let handlers = self?.actionHandlers[identifier] else { return }
      for handler in handlers {
        handler(action)
      }
    }
  }
}
