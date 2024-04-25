//
//  Player.swift
//  DutchBlitz
//
//  Created by Anna Wu on 4/24/24.
//

import Foundation
import Observation

@Observable
class Players {
    var existingplayers = [PlayerItem]() {
        didSet {
            if let encoded = try? JSONEncoder().encode(existingplayers) {
                UserDefaults.standard.set(encoded, forKey: "ExistingPlayers")
            }
        }
    }
    
    init() {
        if let savedPlayers = UserDefaults.standard.data(forKey: "ExistingPlayers") {
            if let decodedPlayers = try? JSONDecoder().decode([PlayerItem].self, from: savedPlayers) {
                existingplayers = decodedPlayers
                return
            }
        }
        
        existingplayers = []
    }
}

struct PlayerItem: Identifiable, Codable {
    var id = UUID()
    let name: String
    let currPoints: Int
    let wins: Int
    let totalPoints: Int
    let gamesPlayed: Int
}

