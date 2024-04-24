//
//  AddPlayerView.swift
//  DutchBlitz
//
//  Created by Anna Wu on 4/24/24.
//

import SwiftUI

struct AddPlayerView: View {
    @State private var name = ""
    
    var players: Players
    
    var body: some View {
        NavigationStack {
            Form {
                TextField("Name", text: $name)
            }
            .toolbar {
                Button("Save"){
                    let player = PlayerItem(name: name, currPoints: 0, wins: 0, totalPoints: 0, gamesPlayed: 0)
                    players.existingplayers.append(player)
                }
            }
        }
    }
}

#Preview {
    AddPlayerView(players: Players())
}
