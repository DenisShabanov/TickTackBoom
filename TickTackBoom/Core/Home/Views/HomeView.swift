//
//  HomeView.swift
//  TickTackBoom
//
//  Created by Denis Shabanov on 03.02.2026.
//

import SwiftUI

struct HomeView: View {
    
    // MARK: - Body
    
    var body: some View {
        ZStack{
            LinearGradient(colors: [Color.theme.secondGradient, Color.theme.firstGradient], startPoint: .topLeading, endPoint: .bottomTrailing)
            
            pageContent
        }
        .ignoresSafeArea()
    }
}

// MARK: - Layout

extension HomeView {
    private var pageContent: some View {
        VStack(spacing: 20) {
           Image("AppLogo")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity)
                .frame(height: 300)
            Spacer()
            CustomButton(title: "Играть", width: 340, action: {})
            CustomButton(title: "Что за игра?", width: 280, action: {})
            
            Spacer()
        }
    }
}

// MARK: - Preview

#Preview {
    HomeView()
}
