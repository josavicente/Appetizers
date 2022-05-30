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
    
    // Network Alerts
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
    
    // Account Alerts
    static let invalidForm = AlertItem(title: Text("Invalid Form"),
                                            message: Text("Please ensure all fields in the form have been filled out."),
                                              dissmissButton: .default(Text("Ok")))
    static let invalidEmail = AlertItem(title: Text("Invalid Email"),
                                            message: Text("Please ensure your email is correct."),
                                              dissmissButton: .default(Text("Ok")))
    static let userSaveSucces = AlertItem(title: Text("Profile Saved"),
                                            message: Text("Your profile information was successfuly saved."),
                                              dissmissButton: .default(Text("Ok")))
    static let invalidUserData = AlertItem(title: Text("Profile Error"),
                                            message: Text("There was an error saving or retrieving your profile."),
                                              dissmissButton: .default(Text("Ok")))
}
