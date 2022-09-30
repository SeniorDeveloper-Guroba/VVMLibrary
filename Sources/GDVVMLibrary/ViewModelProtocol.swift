
import Foundation

public protocol ViewModelProtocol where Self: AnyObject {
    
    // MARK: - Основное View
    associatedtype View : ViewProtocol
    associatedtype State
    
    var viewProperties: View.ViewProperties? { get set }
    
    var bind: ClosureTwo<Properties, View.ViewProperties?>? { get set }
}

extension ViewModelProtocol {
    
    // MARK: - Привязываем View с ViewModel
    public func bind(with view: View) {
        self.bind = { properties, viewProperties in
            switch properties {
                case .create:
                    view.create(with: viewProperties)
                case .update:
                    view.update(with: viewProperties)
            }
        }
    }
    
    public func update(with viewProperties: View.ViewProperties?) {
        self.bind?(.update, viewProperties)
    }
    
    public func create(with viewProperties: View.ViewProperties?) {
        self.bind?(.create, viewProperties)
    }
}

public enum Properties {
    case create
    case update
}
