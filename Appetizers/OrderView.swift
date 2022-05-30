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
                        }.onDelete(perform: order.deleteItems)
                    }
                    .listStyle(PlainListStyle())
                    
                    Button{
                        
                    } label: {
//                        APButton(title: "$\(order.totalPrice, specifier: "%.2f") - Place Order")
                        Text("$\(order.totalPrice, specifier: "%.2f") - Place Order")
                    }.modifier(StandardButtonStyle())
                    .padding(.bottom, 25)
                }
                
                if order.items.isEmpty {
                    EmptyState(imageName: "orderEmpty", message: "You have no items in your order.\nPlease add an appetizer!")
                }
            }
            .navigationTitle("🤑 Orders")
        }
    }
    
    
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
