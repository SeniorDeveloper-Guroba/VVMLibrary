
import Foundation

public protocol ViewProtocol where Self: AnyObject {
    
    associatedtype ViewProperties
    
    var viewProperties: ViewProperties? { get set }
    
    func create(with viewProperties: ViewProperties?)
    func update(with viewProperties: ViewProperties?)
}
