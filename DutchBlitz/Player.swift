//
//  Player.swift
//  DutchBlitz
//
//  Created by Anna Wu on 4/24/24.
//

import Foundation
import Observation

@Observable
class Player {
    var name: String
    var currPoints: Int
    var wins: Int
    var totalPoints: Int
    var gamesPlayed: Int
    
    init(name: String, currPoints: Int, wins: Int, totalPoints: Int, gamesPlayed: Int) {
        self.name = name
        self.currPoints = currPoints
        self.wins = wins
        self.totalPoints = totalPoints
        self.gamesPlayed = gamesPlayed
    }
}

