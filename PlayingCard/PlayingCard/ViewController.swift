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
    
    
    /// <#Description#>
    /// - Parameter name: <#name description#>
    /// - Parameter age: <#age description#>
    /// - Parameter height: <#height description#>
    func test(name: String, age: Int, height: Float) {
        print("\(name)\(age)\(height)")
    }


}

