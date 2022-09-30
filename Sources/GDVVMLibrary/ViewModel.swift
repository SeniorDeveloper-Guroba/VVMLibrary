import Foundation

open class ViewModel<View: ViewProtocol> {
    
    public var update: Closure<View.ViewProperties?>?
    public var create: Closure<View.ViewProperties?>?
    
    // MARK: - Привязываем View с ViewModel
    public func bind(with view: View) {
        self.update = view.update(with:)
        self.create = view.create(with:)
    }
}
