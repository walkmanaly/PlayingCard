//
//  PlayingCard.swift
//  PlayingCard
//
//  Created by Nick on 2019/6/7.
//  Copyright © 2019 Nick. All rights reserved.
//

import Foundation

struct PlayingCard {
    var suit: Suit
    var rank: Rank
    
    enum Suit: String {
        case spade = "♤"
        case heart = "♡"
        case club = "♧"
        case daimond = "♢"
        
        static var all = [Suit.spade, .heart, .club, .daimond]
    }
    
    enum Rank {
        case ace
        case numeric(Int)
        case face(String)
        
        var order: Int {
            switch self {
            case .ace: return 1
            case .numeric(let num): return num
            case .face(let kind) where kind == "J": return 11
            case .face(let kind) where kind == "O": return 12
            case .face(let kind) where kind == "K": return 13
            default: return 0
            }
        }
        
        static var allRank: [Rank] {
            var allRanks = [Rank.ace]
            for pic in 2...10 {
                allRanks.append(Rank.numeric(pic))
            }
            allRanks += [Rank.face("J"), .face("Q"), .face("K")]
            return allRanks
        }
        
    }
    
    
    
    
}
