//
//  AppetizersListView.swift
//  Appetizers
//
//  Created by Josafat Vicente Pérez on 24/5/22.
//

import SwiftUI

struct AppetizersListView: View {
    
    @StateObject var  viewModel = AppetizersListViewModel()

    var body: some View {
        NavigationView{
            List(viewModel.appetizers) { appetizer in
                AppetizerListCell(appetizer: appetizer)
            }
            .navigationTitle("🍟 Appetizers")
        }.onAppear(){
            viewModel.getAppetizers()
        }
    }
    
}

struct AppetizersListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizersListView()
    }
}
