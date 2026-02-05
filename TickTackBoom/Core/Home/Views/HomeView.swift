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
        VStack {
           Image("AppLogo")
                .resizable()
                .scaledToFit()
            Spacer()
            
            Button {
                
            } label: {
                Text("Играть")
            }
            
            Button {
                
            } label: {
                Text("Что за игра?")
            }
            
            Spacer()
        }
    }
}

// MARK: - Preview

#Preview {
    HomeView()
}
