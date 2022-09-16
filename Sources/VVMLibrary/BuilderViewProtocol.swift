//
//  BuilderViewProtocol.swift
//  
//
//  Created by Senior Developer on 10.09.2022.
//

public protocol BuilderViewProtocol: AnyObject {
    
    associatedtype ViewModel: ViewModelProtocol
    associatedtype View     : ViewProtocol
    
    var viewModel: ViewModel { get set }
    var view     : View      { get set }
    
}
