//
//  Alert.swift
//  Appetizers
//
//  Created by Josafat Vicente Pérez on 29/5/22.
//

import Foundation
import SwiftUI

struct AlertItem : Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dissmissButton: Alert.Button
}

struct AlertContext {
    static let invalidData      = AlertItem(title: Text("Server Error"),
                                              message: Text("The data receive from the server was invalid. Please contact support."),
                                              dissmissButton: .default(Text("Ok")))
    static let invalidResponse  = AlertItem(title: Text("Server Error"),
                                            message: Text("Invalid response from the server was invalid. Please contact support."),
                                              dissmissButton: .default(Text("Ok")))
    static let invalidURL       = AlertItem(title: Text("Server Error"),
                                            message: Text("There was an issue connecting to the server. If this persists, please contact support."),
                                              dissmissButton: .default(Text("Ok")))
    static let unableToComplete = AlertItem(title: Text("Server Error"),
                                            message: Text("Unable to complete your request at this time. Please check your internet connection."),
                                              dissmissButton: .default(Text("Ok")))
}
