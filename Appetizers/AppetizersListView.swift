//
//  AppetizersListView.swift
//  Appetizers
//
//  Created by Josafat Vicente Pérez on 24/5/22.
//

import SwiftUI

struct AppetizersListView: View {
    
    @StateObject var  viewModel = AppetizersListViewModel()
    @State private var isShowingDetail = false
    @State private var selectedAppetizer: Appetizer?

    var body: some View {
        
        ZStack{
            NavigationView{
                List(viewModel.appetizers) { appetizer in
                    AppetizerListCell(appetizer: appetizer)
                        .onTapGesture {
                            selectedAppetizer = appetizer
                            isShowingDetail = true
                            
                        }
                }
                .navigationTitle("🍟 Appetizers")
                .disabled(isShowingDetail ? true : false)
            }.onAppear(){
                viewModel.getAppetizers()
            }
            .blur(radius: isShowingDetail ? 20 : 0)
            
            
            if isShowingDetail {
                AppetizerDetailView(isShowingDetail: $isShowingDetail, appetizer: selectedAppetizer!)
            }
            
            if viewModel.isLoading {
                LoadingView()
            }
        }.alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dissmissButton)
        }
        
    }
    
}

struct AppetizersListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizersListView()
    }
}
