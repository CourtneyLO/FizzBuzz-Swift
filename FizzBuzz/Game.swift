//
//  Game.swift
//  FizzBuzz
//
//  Created by Courtney Osborn on 30/01/2017.
//  Copyright © 2017 Courtney Osborn. All rights reserved.
//

import Foundation

class Game: NSObject {
    
    var score: Int
    let brain: Brain
    
    override init() {
     score = 0
     brain = Brain()
     super.init()
    }
    
    func play(input: String) -> (right:Bool, score: Int) {
    let result = brain.check(number: score + 1)
        
        if result == input {
            score += 1
            return (true, score)
        } else {
            return (false, score)
        }
    }
}
