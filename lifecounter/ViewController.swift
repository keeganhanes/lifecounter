//
//  ViewController.swift
//  lifecounter
//
//  Created by Keegan Hanes on 1/26/19.
//  Copyright © 2019 Keegan Hanes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func historyBtn(_ sender: Any) {
        performSegue(withIdentifier: "segue", sender: self)
    }
    
    
    @IBOutlet weak var p1Life: UILabel!
    var p1LifeValue : Int = 20
    @IBOutlet weak var p2Life: UILabel!
    var p2LifeValue : Int = 20
    @IBOutlet weak var p3Life: UILabel!
    var p3LifeValue : Int = 20
    @IBOutlet weak var p4Life: UILabel!
    var p4LifeValue : Int = 20
    @IBOutlet weak var p5Life: UILabel!
    var p5LifeValue : Int = 20
    @IBOutlet weak var p6Life: UILabel!
    var p6LifeValue : Int = 20
    @IBOutlet weak var p7Life: UILabel!
    var p7LifeValue : Int = 20
    @IBOutlet weak var p8Life: UILabel!
    var p8LifeValue : Int = 20
    
    @IBOutlet weak var playerLostLabel: UILabel!
    
    public func didPlayerLose(_ life: Int, playerNum: String) {
        if life <= 0 {
            playerLostLabel.text = "Player \(playerNum) LOSES!"
        }
    }
    
    // Player 3 outlets
    @IBOutlet weak var player3: UILabel!
    @IBOutlet weak var p3SubtractBtn: UIButton!
    @IBOutlet weak var p3AddBtn: UIButton!
    @IBOutlet weak var p3Subtract5Btn: UIButton!
    @IBOutlet weak var p3Add5Btn: UIButton!
    
    // Player 4 outlets
    @IBOutlet weak var player4: UILabel!
    @IBOutlet weak var p4SubtractBtn: UIButton!
    @IBOutlet weak var p4AddBtn: UIButton!
    @IBOutlet weak var p4Subtract5Btn: UIButton!
    @IBOutlet weak var p4Add5Btn: UIButton!
    
    
    // Player 5 outlets
    @IBOutlet weak var player5: UILabel!
    @IBOutlet weak var p5SubtractBtn: UIButton!
    @IBOutlet weak var p5AddBtn: UIButton!
    @IBOutlet weak var p5Subtract5Btn: UIButton!
    @IBOutlet weak var p5Add5Btn: UIButton!
    
    // Player 6 outlets
    @IBOutlet weak var player6: UILabel!
    @IBOutlet weak var p6SubtractBtn: UIButton!
    @IBOutlet weak var p6AddBtn: UIButton!
    @IBOutlet weak var p6Subtract5btn: UIButton!
    @IBOutlet weak var p6Add5Btn: UIButton!
    
    // Player 7 outlets
    @IBOutlet weak var player7: UILabel!
    @IBOutlet weak var p7SubtractBtn: UIButton!
    @IBOutlet weak var p7AddBtn: UIButton!
    @IBOutlet weak var p7Subtract5Btn: UIButton!
    @IBOutlet weak var p7Add5Btn: UIButton!
    
    // Player 8 outlets
    @IBOutlet weak var player8: UILabel!
    @IBOutlet weak var p8SubtractBtn: UIButton!
    @IBOutlet weak var p8AddBtn: UIButton!
    @IBOutlet weak var p8Subtract5Btn: UIButton!
    @IBOutlet weak var p8Add5Btn: UIButton!
    
    // Remove buttons
    @IBOutlet weak var remove3Btn: UIButton!
    @IBOutlet weak var remove4Btn: UIButton!
    @IBOutlet weak var remove5Btn: UIButton!
    @IBOutlet weak var remove6Btn: UIButton!
    @IBOutlet weak var remove7Btn: UIButton!
    @IBOutlet weak var remove8Btn: UIButton!
    
    
    
    var numberOfPlayers : Int = 4
    @IBOutlet weak var addPlayerBtn: UIButton!
    @IBAction func addPlayers(_ sender: Any) {
        if numberOfPlayers < 8 {
            numberOfPlayers = numberOfPlayers + 1
            if numberOfPlayers == 3 {
                p3Life.isHidden = false
                player3.isHidden = false
                p3SubtractBtn.isHidden = false
                p3AddBtn.isHidden = false
                p3Subtract5Btn.isHidden = false
                p3Add5Btn.isHidden = false
                p3LifeValue = 20
                remove3Btn.isHidden = false
            } else if numberOfPlayers == 4 {
                p4Life.isHidden = false
                player4.isHidden = false
                p4SubtractBtn.isHidden = false
                p4AddBtn.isHidden = false
                p4Subtract5Btn.isHidden = false
                p4Add5Btn.isHidden = false
                p4LifeValue = 20
                remove3Btn.isHidden = true
                remove4Btn.isHidden = false
            } else if numberOfPlayers == 5 {
                p5Life.isHidden = false
                player5.isHidden = false
                p5SubtractBtn.isHidden = false
                p5AddBtn.isHidden = false
                p5Subtract5Btn.isHidden = false
                p5Add5Btn.isHidden = false
                p5LifeValue = 20
                remove4Btn.isHidden = true
                remove5Btn.isHidden = false
            } else if numberOfPlayers == 6 {
                p6Life.isHidden = false
                player6.isHidden = false
                p6SubtractBtn.isHidden = false
                p6AddBtn.isHidden = false
                p6Subtract5btn.isHidden = false
                p6Add5Btn.isHidden = false
                p6LifeValue = 20
                remove5Btn.isHidden = true
                remove6Btn.isHidden = false
            } else if numberOfPlayers == 7 {
                p7Life.isHidden = false
                player7.isHidden = false
                p7SubtractBtn.isHidden = false
                p7AddBtn.isHidden = false
                p7Subtract5Btn.isHidden = false
                p7Add5Btn.isHidden = false
                p7LifeValue = 20
                remove6Btn.isHidden = true
                remove7Btn.isHidden = false
            } else {
                p8Life.isHidden = false
                player8.isHidden = false
                p8SubtractBtn.isHidden = false
                p8AddBtn.isHidden = false
                p8Subtract5Btn.isHidden = false
                p8Add5Btn.isHidden = false
                p8LifeValue = 20
                remove7Btn.isHidden = true
                remove8Btn.isHidden = false
            }
        }
    }
    
    @IBAction func remove3(_ sender: Any) {
        p3Life.isHidden = true
        player3.isHidden = true
        p3SubtractBtn.isHidden = true
        p3AddBtn.isHidden = true
        p3Subtract5Btn.isHidden = true
        p3Add5Btn.isHidden = true
        remove3Btn.isHidden = true
        numberOfPlayers = 2
    }
    
    @IBAction func remove4(_ sender: Any) {
        p4Life.isHidden = true
        player4.isHidden = true
        p4SubtractBtn.isHidden = true
        p4AddBtn.isHidden = true
        p4Subtract5Btn.isHidden = true
        p4Add5Btn.isHidden = true
        remove4Btn.isHidden = true
        remove3Btn.isHidden = false
        numberOfPlayers = 3
    }
    
    @IBAction func remove5(_ sender: Any) {
        p5Life.isHidden = true
        player5.isHidden = true
        p5SubtractBtn.isHidden = true
        p5AddBtn.isHidden = true
        p5Subtract5Btn.isHidden = true
        p5Add5Btn.isHidden = true
        remove5Btn.isHidden = true
        remove4Btn.isHidden = false
        numberOfPlayers = 4
    }
    
    @IBAction func remove6(_ sender: Any) {
        p6Life.isHidden = true
        player6.isHidden = true
        p6SubtractBtn.isHidden = true
        p6AddBtn.isHidden = true
        p6Subtract5btn.isHidden = true
        p6Add5Btn.isHidden = true
        remove6Btn.isHidden = true
        remove5Btn.isHidden = false
        numberOfPlayers = 5
    }
    
    @IBAction func remove7(_ sender: Any) {
        p7Life.isHidden = true
        player7.isHidden = true
        p7SubtractBtn.isHidden = true
        p7AddBtn.isHidden = true
        p7Subtract5Btn.isHidden = true
        p7Add5Btn.isHidden = true
        remove7Btn.isHidden = true
        remove6Btn.isHidden = false
        numberOfPlayers = 6
    }
    
    @IBAction func remove8(_ sender: Any) {
        p8Life.isHidden = true
        player8.isHidden = true
        p8SubtractBtn.isHidden = true
        p8AddBtn.isHidden = true
        p8Subtract5Btn.isHidden = true
        p8Add5Btn.isHidden = true
        remove8Btn.isHidden = true
        remove7Btn.isHidden = false
        numberOfPlayers = 7
    }
    
    
    
    @IBAction func p1Add(_ sender: Any) {
        addPlayerBtn.isHidden = true
        p1LifeValue = p1LifeValue + 1
        p1Life.text = String(p1LifeValue)
    }
    
    @IBAction func p1Add5(_ sender: Any) {
        addPlayerBtn.isHidden = true
        p1LifeValue = p1LifeValue + 5
        p1Life.text = String(p1LifeValue)
    }
    
    @IBAction func p1Subtract(_ sender: Any) {
        addPlayerBtn.isHidden = true
        p1LifeValue = p1LifeValue - 1
        p1Life.text = String(p1LifeValue)
        didPlayerLose(p1LifeValue, playerNum: "one")
    }
    
    @IBAction func p1Subtract5(_ sender: Any) {
        addPlayerBtn.isHidden = true
        p1LifeValue = p1LifeValue - 5
        p1Life.text = String(p1LifeValue)
        didPlayerLose(p1LifeValue, playerNum: "one")
    }
    
    @IBAction func p2Add(_ sender: Any) {
        addPlayerBtn.isHidden = true
        p2LifeValue = p2LifeValue + 1
        p2Life.text = String(p2LifeValue)
    }
    
    @IBAction func p2Add5(_ sender: Any) {
        addPlayerBtn.isHidden = true
        p2LifeValue = p2LifeValue - 5
        p2Life.text = String(p2LifeValue)
        didPlayerLose(p2LifeValue, playerNum: "two")
    }
    
    @IBAction func p2Subtract(_ sender: Any) {
        addPlayerBtn.isHidden = true
        p2LifeValue = p2LifeValue - 1
        p2Life.text = String(p2LifeValue)
        didPlayerLose(p2LifeValue, playerNum: "two")
    }
    
    @IBAction func p2Subtract5(_ sender: Any) {
        addPlayerBtn.isHidden = true
        p2LifeValue = p2LifeValue + 5
        p2Life.text = String(p2LifeValue)
    }
    
    @IBAction func p3Subtract(_ sender: Any) {
        addPlayerBtn.isHidden = true
        p3LifeValue = p3LifeValue - 1
        p3Life.text = String(p3LifeValue)
        didPlayerLose(p3LifeValue, playerNum: "three")
    }
    
    @IBAction func p3Add(_ sender: Any) {
        addPlayerBtn.isHidden = true
        p3LifeValue = p3LifeValue + 1
        p3Life.text = String(p3LifeValue)
    }
    
    @IBAction func p3Subtract5(_ sender: Any) {
        addPlayerBtn.isHidden = true
        p3LifeValue = p3LifeValue - 5
        p3Life.text = String(p3LifeValue)
        didPlayerLose(p3LifeValue, playerNum: "three")
    }
    
    @IBAction func p3Add5(_ sender: Any) {
        addPlayerBtn.isHidden = true
        p3LifeValue = p3LifeValue + 5
        p3Life.text = String(p3LifeValue)
    }
    
    @IBAction func p4Subtract(_ sender: Any) {
        addPlayerBtn.isHidden = true
        p4LifeValue = p4LifeValue - 1
        p4Life.text = String(p4LifeValue)
        didPlayerLose(p4LifeValue, playerNum: "four")
    }
    
    @IBAction func p4Add(_ sender: Any) {
        addPlayerBtn.isHidden = true
        p4LifeValue = p4LifeValue + 1
        p4Life.text = String(p4LifeValue)
    }
    
    @IBAction func p4Subtract5(_ sender: Any) {
        addPlayerBtn.isHidden = true
        p4LifeValue = p4LifeValue - 5
        p4Life.text = String(p4LifeValue)
        didPlayerLose(p4LifeValue, playerNum: "four")
    }
    
    @IBAction func p4Add5(_ sender: Any) {
        addPlayerBtn.isHidden = true
        p4LifeValue = p4LifeValue + 5
        p4Life.text = String(p4LifeValue)
    }
    
    @IBAction func p5Subtract(_ sender: Any) {
        addPlayerBtn.isHidden = true
        p5LifeValue = p5LifeValue - 1
        p5Life.text = String(p5LifeValue)
        didPlayerLose(p5LifeValue, playerNum: "five")
    }
    @IBAction func p5Add(_ sender: Any) {
        addPlayerBtn.isHidden = true
        p5LifeValue = p5LifeValue + 1
        p5Life.text = String(p5LifeValue)
    }
    @IBAction func p5Subtract5(_ sender: Any) {
        addPlayerBtn.isHidden = true
        p5LifeValue = p5LifeValue - 5
        p5Life.text = String(p5LifeValue)
        didPlayerLose(p5LifeValue, playerNum: "five")
    }
    @IBAction func p5Add5(_ sender: Any) {
        addPlayerBtn.isHidden = true
        p5LifeValue = p5LifeValue + 5
        p5Life.text = String(p5LifeValue)
    }
    
    
    @IBAction func p6Subtract(_ sender: Any) {
        addPlayerBtn.isHidden = true
        p6LifeValue = p6LifeValue - 1
        p6Life.text = String(p6LifeValue)
        didPlayerLose(p6LifeValue, playerNum: "six")
    }
    @IBAction func p6Add(_ sender: Any) {
        addPlayerBtn.isHidden = true
        p6LifeValue = p6LifeValue + 1
        p6Life.text = String(p6LifeValue)
    }
    @IBAction func p6Subtract5(_ sender: Any) {
        addPlayerBtn.isHidden = true
        p6LifeValue = p6LifeValue - 5
        p6Life.text = String(p6LifeValue)
        didPlayerLose(p6LifeValue, playerNum: "six")
    }
    @IBAction func p6Add5(_ sender: Any) {
        addPlayerBtn.isHidden = true
        p6LifeValue = p6LifeValue + 5
        p6Life.text = String(p6LifeValue)
    }
    
    @IBAction func p7Subtract(_ sender: Any) {
        addPlayerBtn.isHidden = true
        p7LifeValue = p7LifeValue - 1
        p7Life.text = String(p7LifeValue)
        didPlayerLose(p7LifeValue, playerNum: "seven")
    }
    @IBAction func p7Add(_ sender: Any) {
        addPlayerBtn.isHidden = true
        p7LifeValue = p7LifeValue + 1
        p7Life.text = String(p7LifeValue)
    }
    @IBAction func p7Subtract5(_ sender: Any) {
        addPlayerBtn.isHidden = true
        p7LifeValue = p7LifeValue - 5
        p7Life.text = String(p7LifeValue)
        didPlayerLose(p7LifeValue, playerNum: "seven")
    }
    @IBAction func p7Add5(_ sender: Any) {
        addPlayerBtn.isHidden = true
        p7LifeValue = p7LifeValue + 5
        p7Life.text = String(p7LifeValue)
    }
    
    @IBAction func p8Subtract(_ sender: Any) {
        addPlayerBtn.isHidden = true
        p8LifeValue = p8LifeValue - 1
        p8Life.text = String(p8LifeValue)
        didPlayerLose(p8LifeValue, playerNum: "eight")
    }
    @IBAction func p8Add(_ sender: Any) {
        addPlayerBtn.isHidden = true
        p8LifeValue = p8LifeValue + 1
        p8Life.text = String(p8LifeValue)
    }
    @IBAction func p8Subtract5(_ sender: Any) {
        addPlayerBtn.isHidden = true
        p8LifeValue = p8LifeValue - 5
        p8Life.text = String(p8LifeValue)
        didPlayerLose(p8LifeValue, playerNum: "eight")
    }
    @IBAction func p8Add5(_ sender: Any) {
        addPlayerBtn.isHidden = true
        p8LifeValue = p8LifeValue + 5
        p8Life.text = String(p8LifeValue)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        p5Life.isHidden = true
        player5.isHidden = true
        p5SubtractBtn.isHidden = true
        p5AddBtn.isHidden = true
        p5Subtract5Btn.isHidden = true
        p5Add5Btn.isHidden = true
        p6Life.isHidden = true
        player6.isHidden = true
        p6SubtractBtn.isHidden = true
        p6AddBtn.isHidden = true
        p6Subtract5btn.isHidden = true
        p6Add5Btn.isHidden = true
        p7Life.isHidden = true
        player7.isHidden = true
        p7SubtractBtn.isHidden = true
        p7AddBtn.isHidden = true
        p7Subtract5Btn.isHidden = true
        p7Add5Btn.isHidden = true
        p8Life.isHidden = true
        player8.isHidden = true
        p8SubtractBtn.isHidden = true
        p8AddBtn.isHidden = true
        p8Subtract5Btn.isHidden = true
        p8Add5Btn.isHidden = true
        
        remove3Btn.isHidden = true
        remove4Btn.isHidden = false
        remove5Btn.isHidden = true
        remove6Btn.isHidden = true
        remove7Btn.isHidden = true
        remove8Btn.isHidden = true
    }
}

