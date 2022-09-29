//
//  ViewProtocol.swift
//  
//
//  Created by Senior Developer on 10.09.2022.
//
//import Foundation
//
//public protocol ViewProtocol where Self: AnyObject {
//    
//    associatedtype ViewProperties
//    
//    var viewProperties: ViewProperties? { get set }
//    
//    var updateViewProperties: Closure<ViewProperties?>? { get }
//    var createViewProperties: Closure<ViewProperties?>? { get }
//    
//    func bind()
//}
import Foundation

public protocol ViewProtocol where Self: AnyObject {
    
    associatedtype ViewProperties
    
    var viewProperties: ViewProperties? { get set }
    
    func create(with viewProperties: ViewProperties?)
    func update(with viewProperties: ViewProperties?)
}
