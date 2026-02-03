//
//  Color.swift
//  TickTackBoom
//
//  Created by Denis Shabanov on 03.02.2026.
//

import Foundation
import SwiftUI

extension Color {
    
    static let theme = ColorTheme()
    
}

struct ColorTheme {
    
    let accent = Color("AccentColor")
    let firstGradient = Color("FirstGradientColor")
    let secondGradient = Color("SecondGradientColor")
}
