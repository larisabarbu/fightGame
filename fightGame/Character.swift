//
//  Character.swift
//  fightGame
//
//  Created by Larisa Barbu on 20/03/2016.
//  Copyright © 2016 Larisa Barbu. All rights reserved.
//

import Foundation

class Character {
    private var _hp: Int = 100
    private var _attackPwr: Int = 10
    
    var attackPwr: Int {
        return _attackPwr
    }
    
    var hp: Int {
        return _hp
    }
    
    //to make sure that the attack is not higher than the life of the character
    
    var isAlive: Bool {
        get {
            if hp <= 0 {
                return false
            } else {
                return true
            }
        }
    }
    
    //initialises the power attack for the coder.
    //attackPwr refers to the global 
    //self._attackPwr refers to the local one
   
    init(startingHp: Int, attackPwr: Int) {
        self._hp = startingHp
        self._attackPwr = attackPwr
    }
    
    func attemptAttack(attackPwr: Int) -> Bool {
        self._hp -= attackPwr
        
        return true
    }
    
}
