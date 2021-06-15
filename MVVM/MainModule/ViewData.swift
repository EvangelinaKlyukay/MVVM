//
//  ViewData.swift
//  MVVM
//
//  Created by Евангелина Клюкай on 11.06.2021.
//

import Foundation

enum ViewData {
    case initial
    case loading(UserData)
    case success(UserData)
    case failure(UserData)
    
    struct UserData {
        let icon: String?
        let title: String?
        let description: String?
        let numberPhone: String?
    }
}
