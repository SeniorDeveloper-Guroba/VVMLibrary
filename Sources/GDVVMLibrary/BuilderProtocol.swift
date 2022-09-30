//
//  BuilderProtocol.swift
//  
//
//  Created by Senior Developer on 10.09.2022.
//
import UIKit

public protocol BuilderProtocol: AnyObject {
    
    associatedtype View: ViewProtocol
    
    var viewModel: ViewModel<View> { get set }
    var view     : View            { get set }
}
