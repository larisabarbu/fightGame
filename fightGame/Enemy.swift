//
//  Enemy.swift
//  fightGame
//
//  Created by Larisa Barbu on 20/03/2016.
//  Copyright © 2016 Larisa Barbu. All rights reserved.
//

import Foundation

class Enemy: Character {
    
    var loot: [String] {
        return ["Rusty Dagger", "Cracked Buckler"]
    }
    
    var type: String {
        
        return "Grunt"
    }
    //i win only if the Enemy is dead (!isAlive - not isAlive)
    
    func dropLoot() ->String? {
        if !isAlive {
            let rand = Int(arc4random_uniform(UInt32(loot.count)))
            return loot [rand]
        }
            return nil
    
    }
    
}
