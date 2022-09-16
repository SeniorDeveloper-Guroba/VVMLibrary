import Foundation

public protocol ViewModelProtocol where Self: AnyObject {
    
    // MARK: - Основное View
    associatedtype MainView: ViewProtocol
    
    var updateViewProperties: Closure<MainView.ViewProperties>? { get set }
    var createViewProperties: Closure<MainView.ViewProperties>? { get set }
}

extension ViewModelProtocol {
    
    // MARK: - Привязываем View с ViewModel
    public func bindView(with mainView: MainView) {
        mainView.update()
        self.updateViewProperties = mainView.updateViewProperties
        self.createViewProperties = mainView.createViewProperties
    }
}

