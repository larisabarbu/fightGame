//
//  ViewController.swift
//  fightGame
//
//  Created by Larisa Barbu on 20/03/2016.
//  Copyright © 2016 Larisa Barbu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        player = Player(name: "Dirty Layndry21", hp: 110, attackPrw: 20)
        
        generateRandomEnemy()
        
        playerHpLbl.text = "\(player.hp) HP"
        
    }

    @IBOutlet weak var printLbl: UILabel!
    
    @IBOutlet weak var playerHpLbl: UILabel!
    
    @IBOutlet weak var enemyHpLbl: UILabel!
    
    @IBOutlet weak var enemyImage: UIImageView!
    
    @IBOutlet weak var chestButton: UIButton!
    
    var player: Player!
    var enemy: Enemy!
    var chestMessage: String?
//    
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        
//        player = Player(name: "Dirty Layndry21", hp: 110, attackPrw: 20)
//        
//        generateRandomEnemy()
//        
//        playerHpLbl.text = "\(player.hp) HP"
//        enemyHpLbl.text = "\(enemy.hp) HP"
//
//    }
    
    func generateRandomEnemy() {
        let rand = Int(arc4random_uniform(2))
        
        if rand == 0 {
            enemy = Kimara(startingHp: 50, attackPwr: 12)
        } else {
            enemy = DevilWizard(startingHp: 60, attackPwr:  15)
        }
        
    
        enemyImage.hidden = false
    }
    @IBAction func onChestTapped(sender: AnyObject) {
        //when chest is tapped, it gathers the loot
        
        chestButton.hidden = true
        printLbl.text = chestMessage
        NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: "generateRandomEnemy", userInfo: nil, repeats: false)
    }
    
    @IBAction func attackTapped(sender: AnyObject) {
    
    if enemy.attemptAttack(player.attackPwr) {
        printLbl.text = "Attacked \(enemy.type) for \(player.attackPwr) HP"
        enemyHpLbl.text = "\(enemy.hp) HP"
    } else {
        printLbl.text = "Attack was unsuccessful!"
    }
    
    if let loot = enemy.dropLoot() {
        player.addItemToInventory(loot)
        chestMessage = "\(player.name) found \(loot)"
        chestButton.hidden = false
        }
        
        if !enemy.isAlive {
            enemyHpLbl.text = ""
            printLbl.text = "Killed \(enemy.type)"
            enemyImage.hidden = true
        }
    }

}

