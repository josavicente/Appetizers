//
//  AccountView.swift
//  Appetizers
//
//  Created by Josafat Vicente Pérez on 24/5/22.
//

import SwiftUI

struct AccountView: View {
    
    @StateObject var viewModel = AccountViewModel()
    
    
    
    var body: some View {
        NavigationView{
            Form{
                Section {
                    TextField("First Name", text: $viewModel.firstName)
                    TextField("Last Name", text: $viewModel.lastName)
                    TextField("email", text: $viewModel.email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    DatePicker("Birth Day", selection: $viewModel.date, displayedComponents: .date)
                    Button{
                        viewModel.saveChanges()
                    } label: {
                        Text("Save Changes")
                    }
                } header: {
                    Text("Personal Info")
                }
                
                Section {
                    Toggle("Extra Napkins", isOn: $viewModel.extraNapkins)
                    Toggle("Frequent Refills", isOn: $viewModel.frequentRefills)
                        
                } header: {
                    Text("Requests")
                }.toggleStyle(SwitchToggleStyle(tint: .brandPrimary))


            }
                .navigationTitle("😎 Appetizers")
        }.alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dissmissButton)
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
