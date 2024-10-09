//
//  LoginView.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 06.03.2024.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject private var loginViewVM: LoginViewViewModel
    
    var body: some View {
        VStack {
            HStack {
                TextField("Enter your name", text: $loginViewVM.user.name)
                    .multilineTextAlignment(.center)
                
                Text("\(loginViewVM.nameCharacterCount)")
                    .foregroundStyle(loginViewVM.isNameValid ? .green : .red)
            }
            
            Button(action: loginViewVM.login) {
                Label("OK", systemImage: "checkmark.circle")
            }
            .disabled(!loginViewVM.isNameValid)
        }
        .padding()
    }
}

#Preview {
    LoginView()
        .environmentObject(LoginViewViewModel())
}
