//
//  AppetizersListView.swift
//  Appetizers
//
//  Created by Josafat Vicente Pérez on 24/5/22.
//

import SwiftUI

struct AppetizersListView: View {
    var body: some View {
        NavigationView{
            Text("List View")
                .navigationTitle("🍟 Appetizers")
        }
    }
}

struct AppetizersListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizersListView()
    }
}
