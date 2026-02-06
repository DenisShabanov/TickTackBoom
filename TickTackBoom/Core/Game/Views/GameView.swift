//
//  GameView.swift
//  TickTackBoom
//
//  Created by Denis Shabanov on 05.02.2026.
//

import SwiftUI
import SDWebImageSwiftUI

struct GameView: View {
    
    //MARK: - Properties
    @State
    private var gameIsStart: Bool = false
    
    //MARK: - Body
    
    var body: some View {
        ZStack{
            LinearGradient(colors: [Color.theme.secondGradient, Color.theme.firstGradient], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            VStack{
                if gameIsStart == false{
                    logoAndButton
                }
                else{
                    gameAndBomb
                }
            }
            .padding()
        }
    }
}

//MARK: - Layout

private extension GameView {
    
    var logoAndButton: some View {
        VStack {
            Image("LogoInGame")
                .resizable()
                .scaledToFit()
                .frame(height: 200)
            Spacer()
            CustomButton(title: "Старт", width: 380, action: {
                gameIsStart = true
            })
            Spacer()
        }
    }
    
    var gameAndBomb : some View {
        VStack {
            Text("Какая-то тема для игры....")
                .font(.title2)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
            AnimatedImage(assetName: "BombAnimated")
                .resizable()
                .scaledToFit()
        }
    }
}

//MARK: - Private extension

private extension AnimatedImage {
    init(assetName: String) {
        if let data = NSDataAsset(name: assetName)?.data {
            self.init(data: data)
        } else {
            self.init(data: Data())
        }
    }
}

//MARK: - Preview

#Preview {
    GameView()
}
