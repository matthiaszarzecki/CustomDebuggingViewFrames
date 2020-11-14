//
//  Utilities.swift
//  DebugBackgroundPresentation
//
//  Created by Matthias Zarzecki on 14.11.20.
//

import Foundation
import SwiftUI

extension View {
  /// Adds a background-rectangle with a random color, for debugging purposes.
  func coloredDebugBackground() -> some View {
    return self.background(Rectangle().foregroundColor(Utilities.randomDebugColor()))
  }
}

class Utilities {
  // Produces a random color-shade from a preset base.
  static func randomDebugColor() -> Color {
    let hue = 0.2  //blue-ish
    let saturation = 0.8
    let brightness = 0.8
    
    let randomRange = 0.4
    
    let randomColor: Color = Color.init(
      hue: hue + Double.random(in: 0 ..< randomRange),
      saturation: saturation + Double.random(in: 0 ..< randomRange),
      brightness: brightness + Double.random(in: 0 ..< randomRange)
    )
    
    return Color.clear
  }
}
