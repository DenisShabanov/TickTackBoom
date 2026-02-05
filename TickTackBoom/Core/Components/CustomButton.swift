//
//  CustomButton.swift
//  TickTackBoom
//
//  Created by Denis Shabanov on 05.02.2026.
//

import SwiftUI

struct CustomButton: View {
    
    //MARK: - Properties
    
    var title: String
    var width: CGFloat
    var action: () -> Void
    
    //MARK: - Body
    
    var body: some View {
        Button {
            action()
        } label: {
            Text(title)
                .font(.title)
                .fontWeight(.semibold)
                .padding()
                .frame(maxWidth: width)
                .background(Color.theme.secondGradient)
                .overlay{
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.theme.accent, lineWidth: 2)
                }
        }
    }
}

//MARK: - Preview

#Preview {
    CustomButton(title: "Играть", width: .infinity, action: {})
}
