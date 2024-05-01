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
    var games = [GameItem]()
}

struct GameItem {
    var players: [PlayerItem]
    var date: Date
    var winner: PlayerItem?
    var timePlayed: TimeInterval
    var type: String
}
