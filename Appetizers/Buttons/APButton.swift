//
//  APButton.swift
//  Appetizers
//
//  Created by Josafat Vicente Pérez on 30/5/22.
//

import SwiftUI

struct APButton: View {
    
    let title : LocalizedStringKey
    
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .foregroundColor(.white)
            .background(Color.brandPrimary)
            .cornerRadius(10)
    }
}
