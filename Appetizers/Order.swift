//
//  Order.swift
//  Appetizers
//
//  Created by Josafat Vicente Pérez on 30/5/22.
//

import SwiftUI

final class Order : ObservableObject {
    
    @Published var items : [Appetizer] = []
    
    func add(_ appetizer: Appetizer){
        items.append(appetizer)
    }
}
