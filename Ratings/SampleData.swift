//
//  SampleData.swift
//  Ratings
//
//  Created by admin on 8/21/17.
//  Copyright © 2017 Sang Tran. All rights reserved.
//

import Foundation
final class SampleData {
    static func genneratorPlayerData() -> [Player] {
        return [
            Player(name: "Sang Tran", game: "FootBall", rating: 3),
            Player(name: "MLXG", game: "LOL", rating: 4),
            Player(name: "SOFM", game: "Dota", rating: 2)
        ]
    
    }
}
