//
//  ContentView.swift
//  DutchBlitz
//
//  Created by Anna Wu on 4/24/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            GameView()
                .tabItem {
                    Label("Game", systemImage: "flag.checkered.2.crossed")
                }
            
            PlayerView()
                .tabItem {
                    Label("Players", systemImage: "person.3.fill")
                }
        }
    }
}

#Preview {
    ContentView()
}
