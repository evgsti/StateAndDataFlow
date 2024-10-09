//
//  ContentView.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 06.03.2024.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var contentViewVM: ContentViewViewModel
    @EnvironmentObject private var loginViewVM: LoginViewViewModel
    
    
    var body: some View {
        VStack {
            CustomTextView(title: contentViewVM.getUser())
            CustomTextView(title: contentViewVM.counter.formatted())
            
            Spacer()
            
            CustomButtonView(
                title: contentViewVM.buttonTitle,
                backgroundColor: .red,
                action: contentViewVM.startTimer
            )
            
            Spacer()
            
            CustomButtonView(
                title: "LogOut",
                backgroundColor: .blue,
                action: loginViewVM.logout
            )
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(ContentViewViewModel())
        .environmentObject(LoginViewViewModel())
}
