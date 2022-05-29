//
//  AppetizersListViewModel.swift
//  Appetizers
//
//  Created by Josafat Vicente Pérez on 29/5/22.
//

import SwiftUI


final class AppetizersListViewModel: ObservableObject {
    
    @Published var appetizers : [Appetizer] = []
    
    func getAppetizers() {
        NetworkManager.shared.getAppetizers { result in
            switch result {
            case .success(let appetizers):
                self.appetizers = appetizers
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
}
