//
//  ViewController.swift
//  PlayingCard
//
//  Created by Nick on 2019/6/7.
//  Copyright © 2019 Nick. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var deck = PlayingCardDeck()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for _ in 1...10 {
            if let card = deck.draw() {
                print(card)
            }
        }
    }


}

