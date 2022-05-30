//
//  OrderView.swift
//  Appetizers
//
//  Created by Josafat Vicente Pérez on 24/5/22.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order : Order

    var body: some View {
        NavigationView{
            ZStack{
                VStack{
                    List {
                        ForEach(order.items){ appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }.onDelete(perform: deleteItems)
                    }
                    .listStyle(PlainListStyle())
                    
                    Button{
                        
                    } label: {
                        APButton(title: "$99.99 - Place Order")
                    }
                    .padding(.bottom, 25)
                }
                
                if order.items.isEmpty {
                    EmptyState(imageName: "orderEmpty", message: "You have no items in your order.\nPlease add an appetizer!")
                }
            }
            .navigationTitle("🤑 Orders")
        }
    }
    
    func deleteItems(at offsets: IndexSet) {
        order.items.remove(atOffsets: offsets)
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
