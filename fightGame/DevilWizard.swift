//
//  DevilWizard.swift
//  fightGame
//
//  Created by Larisa Barbu on 20/03/2016.
//  Copyright © 2016 Larisa Barbu. All rights reserved.
//

import Foundation

class DevilWizard: Enemy {
    override var loot: [String] {
        return ["Magic Wand", "dark Amulet", "Salted Pork"]
    }
    
    override var type: String {
        return "Devil Wizard"
    }
    
}