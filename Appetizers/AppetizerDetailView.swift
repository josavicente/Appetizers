//
//  AppetizerDetailView.swift
//  Appetizers
//
//  Created by Josafat Vicente Pérez on 29/5/22.
//

import SwiftUI

struct AppetizerDetailView: View {
    
    @EnvironmentObject var order : Order
    @Binding var isShowingDetail : Bool
    
    let appetizer: Appetizer
    var body: some View {
        VStack{
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 225)
            VStack{
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                Text(appetizer.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
                
                HStack(spacing: 40){
                    NutritionInfo(title: "Calories", value: appetizer.calories)
                    NutritionInfo(title: "Carbs", value: appetizer.carbs)
                    NutritionInfo(title: "Proteins", value: appetizer.protein)
                }
            }
            Spacer()
            Button{
                order.add(appetizer)
                isShowingDetail = false
            } label: {
//                APButton(title: "$\(appetizer.price, specifier: "%.2f") - Add to Order")
                Text("$\(appetizer.price, specifier: "%.2f") - Add to Order")
            }
            .modifier(StandardButtonStyle())
            .padding(.bottom, 30)
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(
            Button{
                isShowingDetail = false
            } label : {
                XDismissButton()
            }, alignment: .topTrailing
        )
        
    }
}

struct AppetizerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerDetailView(isShowingDetail: .constant(true), appetizer: MockData.sampleAppetizer)
    }
}

struct NutritionInfo: View {
    
    let title : String
    let value : Int
    
    var body: some View {
        VStack (spacing: 5){
            Text(title)
                .bold()
                .font(.caption)
            Text("\(value)")
                .foregroundColor(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
}
