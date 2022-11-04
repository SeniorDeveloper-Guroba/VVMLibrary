import Foundation

open class ViewModel<View: ViewProtocol> {
    
    public var update: Closure<View.ViewProperties?>?
    public var create: Closure<View.ViewProperties?>?
    
    // MARK: - Привязываем View с ViewModel
    public static func bind(with view: View) -> ViewModel? {
        let viewModel = ViewModel<View>()
        viewModel.update = view.update(with:)
        viewModel.create = view.create(with:)
        return viewModel as? Self
    }
    
    public init(){}
}
