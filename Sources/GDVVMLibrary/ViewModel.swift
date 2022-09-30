import Foundation

public class GDViewModel<View: ViewProtocol> {
    
    var update: Closure<View.ViewProperties?>?
    var create: Closure<View.ViewProperties?>?
    
    // MARK: - Привязываем View с ViewModel
    public func bind(with view: View) {
        self.update = view.update(with:)
        self.create = view.create(with:)
    }
}

public enum Properties {
    case create(ClosureEmpty)
    case update(ClosureEmpty)
}
