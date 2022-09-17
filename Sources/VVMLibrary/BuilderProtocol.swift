//
//  BuilderProtocol.swift
//  
//
//  Created by Senior Developer on 10.09.2022.
//
import UIKit

public protocol BuilderProtocol: AnyObject {
    
    associatedtype ViewModel: ViewModelProtocol
    associatedtype View     : ViewProtocol
    
    var viewModel: ViewModel { get set }
    var view     : View      { get set }
    
}

//extension BuilderProtocol {
//    
//    public static func create() -> Self {
//        let viewController = View()
//        let viewModel      = ViewModel()
//        viewController.loadViewIfNeeded()
//        viewModel.bindView(with: viewController)
//        let selfBuilder = Self(with: viewController,
//                               with: viewModel)
//        return selfBuilder
//    }
//}
