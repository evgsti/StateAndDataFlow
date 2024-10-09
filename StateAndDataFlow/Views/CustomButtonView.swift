//
//  CustomButtonView.swift
//  StateAndDataFlow
//
//  Created by Евгений on 09.10.2024.
//

import SwiftUI

struct CustomButtonView: View {
    var title: String
    var width: CGFloat = 200
    var height: CGFloat = 60
    var backgroundColor: Color
    var foregroundColor: Color = .white
    var cornerRadius: CGFloat = 20
    var borderColor: Color = .black
    var borderWidth: CGFloat = 4
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(foregroundColor)
        }
        .frame(width: width, height: height)
        .background(backgroundColor)
        .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
        .overlay(
            RoundedRectangle(cornerRadius: cornerRadius)
                .stroke(borderColor, lineWidth: borderWidth)
        )
    }
}

#Preview {
    CustomButtonView(title: "Button", backgroundColor: .red, action: {})
}
