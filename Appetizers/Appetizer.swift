//
//  Appetizer.swift
//  Appetizers
//
//  Created by Josafat Vicente Pérez on 26/5/22.
//

import Foundation

struct Appetizer : Decodable, Identifiable {
    
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let carbs: Int
    let protein: Int
    let calories: Int
    
}

struct AppetizerResponse : Decodable {
    let request: [Appetizer]
}

struct MockData {
    
    static let sampleAppetizer = Appetizer(id: 1,
                                           name: "Appetizer",
                                           description: "Is Yummy",
                                           price: 9.99,
                                           imageURL: "",
                                           carbs: 99,
                                           protein: 99,
                                           calories: 99)
    
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
    
    static let orderItemOne = Appetizer(id: 1,
                                           name: "Appetizer 1",
                                           description: "Is Yummy",
                                           price: 9.99,
                                           imageURL: "",
                                           carbs: 99,
                                           protein: 99,
                                           calories: 99)
    static let orderItemTwo = Appetizer(id: 1,
                                           name: "Appetizer 2",
                                           description: "Is Yummy",
                                           price: 9.99,
                                           imageURL: "",
                                           carbs: 99,
                                           protein: 99,
                                           calories: 99)
    static let orderItemThree = Appetizer(id: 1,
                                           name: "Appetizer 3",
                                           description: "Is Yummy",
                                           price: 9.99,
                                           imageURL: "",
                                           carbs: 99,
                                           protein: 99,
                                           calories: 99)
    
    static let orders = [orderItemOne, orderItemTwo, orderItemThree]
    
}
