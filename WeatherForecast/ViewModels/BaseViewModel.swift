import Foundation

protocol Actionable {}

protocol BaseViewModelType {
  typealias ActionHandler = ((Actionable) -> Void)

  func bind(_ object: AnyObject, _ handler: @escaping ActionHandler)
  func postInitialActions()
  func unbind(_ object: AnyObject)
  func post(_ action: Actionable)
}

class BaseViewModel: BaseViewModelType {
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

  func post(_ action: Actionable) {
    actionHandlers.values.flatMap { $0 }.forEach { element in
      DispatchQueue.main.async {
        element(action)
      }
    }
  }

  func post(_ action: Actionable, to object: AnyObject) {
    DispatchQueue.main.async { [weak self] in
      let identifier = ObjectIdentifier(object)
      guard let handlers = self?.actionHandlers[identifier] else { return }
      for handler in handlers {
        handler(action)
      }
    }
  }
}
