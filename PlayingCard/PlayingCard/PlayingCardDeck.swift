//
//  PlayingCardDeck.swift
//  PlayingCard
//
//  Created by Nick on 2019/6/7.
//  Copyright © 2019 Nick. All rights reserved.
//

import Foundation

struct PlayingCardDeck {
    private (set) var cards = [PlayingCard]()
    
    init() {
        for suit in PlayingCard.Suit.all {
            for rank in PlayingCard.Rank.allRank {
                cards.append(PlayingCard(suit: suit, rank: rank))
            }
        }
    }
    
    mutating func draw() -> PlayingCard? {
        if cards.count > 0 {
            return cards.remove(at: cards.count.arc4rancom)
        } else {
            return nil
        }
    }
    
    
}

extension Int {
    var arc4rancom: Int {
        if self > 0 {
            return Int(arc4random_uniform(UInt32(self)))
        } else if self < 0 {
            return -Int(arc4random_uniform(UInt32(self)))
        } else {
            return 0
        }
    }
}
