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
    var existingplayers = [PlayerItem]()
}

struct PlayerItem: Identifiable {
    let id = UUID()
    let name: String
    let currPoints: Int
    let wins: Int
    let totalPoints: Int
    let gamesPlayed: Int
}

