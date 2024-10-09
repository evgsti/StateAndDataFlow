//
//  CustomTextView.swift
//  StateAndDataFlow
//
//  Created by Евгений on 09.10.2024.
//

import SwiftUI

struct CustomTextView: View {
    var title: String
    
    var body: some View {
        Text(title)
            .font(.largeTitle)
            .padding(.top, 100)
    }
}

#Preview {
    CustomTextView(title: "text")
}
