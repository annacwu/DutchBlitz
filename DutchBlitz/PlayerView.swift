//
//  PlayerView.swift
//  DutchBlitz
//
//  Created by Anna Wu on 4/24/24.
//

import SwiftUI

struct PlayerView: View {
    @State private var players = Players()
    
    @State private var showingAddPlayer = false
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(players.existingplayers) { player in
                    Text(player.name)
                }
                .onDelete(perform: removePlayers)
            }
            .navigationTitle("Players")
            .toolbar {
                Button("Add Player", systemImage: "plus") {
                    showingAddPlayer = true
                }
            }
            .sheet(isPresented: $showingAddPlayer) {
                AddPlayerView(players: players)
            }
        }
    }
    
    func removePlayers(at offsets: IndexSet) {
        players.existingplayers.remove(atOffsets: offsets)
    }
}

#Preview {
    PlayerView()
}
