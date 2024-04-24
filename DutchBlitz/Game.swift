//
//  Game.swift
//  DutchBlitz
//
//  Created by Anna Wu on 4/24/24.
//

import Foundation
import Observation

@Observable
class Game {
    var players: [Players]
    var date: Date
    var winner: Players?
    var timePlayed: TimeInterval
    var type: String
    
    init(players: [Players], date: Date, timePlayed: TimeInterval, type: String) {
        self.players = players
        self.date = date
        self.winner = nil
        self.timePlayed = timePlayed
        self.type = type
    }
    
    func setWinner(winner: Players) {
        self.winner = winner
    }
}
