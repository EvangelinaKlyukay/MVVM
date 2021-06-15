//
//  MainViewModel.swift
//  MVVM
//
//  Created by Евангелина Клюкай on 11.06.2021.
//

import Foundation

protocol MainViewModelProtocol {
    var updateViewData: ((ViewData)->())? { get set }
    func startFetch()
    func error()
}


final class MainViewModel: MainViewModelProtocol {
    
    
    public var updateViewData: ((ViewData) -> ())?
    
    init() {
        updateViewData?(.initial)
    }
    
    public func error() {
        updateViewData?(.failure(ViewData.UserData(icon: "failure",
                                                   title: "Error",
                                                   description: "Not user",
                                                   numberPhone: nil)))
    }
    
    public func startFetch() {
        updateViewData?(.success(ViewData.UserData(icon: "success",
                                                   title: "Succes",
                                                   description: "Good",
                                                   numberPhone: nil)))
    }
}
