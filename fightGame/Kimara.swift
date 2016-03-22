//
//  Kimara.swift
//  fightGame
//
//  Created by Larisa Barbu on 20/03/2016.
//  Copyright © 2016 Larisa Barbu. All rights reserved.
//

import Foundation

class Kimara: Enemy {
   
    //will be attacked only if the power of the attack is over 15
    
    let IMMUNE_MAX = 15
    
    override var loot: [String] {
        return ["Tough Hide", "Kimara Venom", "Rare Trident"]
    }
    
    override var type: String {
        return "Kimara"
    }
    
    override func attemptAttack(attackPwr: Int) -> Bool {
        if attackPwr >= IMMUNE_MAX {
            return super.attemptAttack(attackPwr)
        } else {
            return false
        }
    }
}