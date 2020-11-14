//
//  ContentView.swift
//  DebugBackgroundPresentation
//
//  Created by Matthias Zarzecki on 12.11.20.
//

import SwiftUI

// XCode 12.2
struct ContentView: View {
  var body: some View {
    GeometryReader { geometry in
      VStack {
        Text("Hello, world!")
          .padding()
        
        HStack {
          Text("Left!")
            .frame(width: geometry.size.width * 0.3, height: 30, alignment: .leading)
            .coloredDebugBackground()
          Text("Right!")
            .frame(width: geometry.size.width * 0.6, height: 30, alignment: .trailing)
            .coloredDebugBackground()
        }
        .padding()
        .coloredDebugBackground()
        
        HStack {
          Text("Left2!")
            .frame(width: geometry.size.width * 0.3, height: 30, alignment: .leading)
          Text("Right2!")
            .frame(width: geometry.size.width * 0.6, height: 30, alignment: .leading)
        }
        .padding()
        .coloredDebugBackground()
        
        Text("Right2!")
          .frame(width: geometry.size.width * 0.6, height: 30, alignment: .leading)
        
        Image(systemName: "bookmark")
          .font(.largeTitle)
          .coloredDebugBackground()
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
