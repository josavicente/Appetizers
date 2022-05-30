//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Josafat Vicente Pérez on 24/5/22.
//

import SwiftUI

@main
struct AppetizersApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizersTabView().environmentObject(order)
        }
    }
}
