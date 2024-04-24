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
    var players: [Player]
    var date: Date
    var winner: Player?
    var timePlayed: TimeInterval
    var type: String
    
    init(players: [Player], date: Date, timePlayed: TimeInterval, type: String) {
        self.players = players
        self.date = date
        self.winner = nil
        self.timePlayed = timePlayed
        self.type = type
    }
    
    func setWinner(winner: Player) {
        self.winner = winner
    }
}
