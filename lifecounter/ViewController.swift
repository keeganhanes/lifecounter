//
//  ViewController.swift
//  lifecounter
//
//  Created by Keegan Hanes on 1/26/19.
//  Copyright © 2019 Keegan Hanes. All rights reserved.
//

import UIKit

var historyTextContent = ""

class ViewController: UIViewController {
    
    @IBAction func historyBtn(_ sender: Any) {
        performSegue(withIdentifier: "segue", sender: self)
    }
    
    var alert2 = UIAlertController(title: "Edit number", message: "Please enter a numberic value", preferredStyle: .alert)
    var alert3 = UIAlertController(title: "Edit number", message: "Please enter a numberic value", preferredStyle: .alert)
    var alert4 = UIAlertController(title: "Edit number", message: "Please enter a numberic value", preferredStyle: .alert)
    var alert5 = UIAlertController(title: "Edit number", message: "Please enter a numberic value", preferredStyle: .alert)
    var alert6 = UIAlertController(title: "Edit number", message: "Please enter a numberic value", preferredStyle: .alert)
    var alert7 = UIAlertController(title: "Edit number", message: "Please enter a numberic value", preferredStyle: .alert)
    var alert8 = UIAlertController(title: "Edit number", message: "Please enter a numberic value", preferredStyle: .alert)
    
    
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
            historyTextContent.append("\nPlayer \(playerNum) lost!")
        }
    }
    
    // Player 1 outlets
    @IBOutlet weak var p1Subtract5Btn: UIButton!
    @IBOutlet weak var p1Add5Btn: UIButton!
    
    // Player 2 outlets
    @IBOutlet weak var p2Subtract5Btn: UIButton!
    @IBOutlet weak var p2Add5Btn: UIButton!
    
    // Player 3 outlets
    @IBOutlet weak var player3: UILabel!
    @IBOutlet weak var p3SubtractBtn: UIButton!
    @IBOutlet weak var p3AddBtn: UIButton!
    @IBOutlet weak var p3Subtract5Btn: UIButton!
    @IBOutlet weak var p3Add5Btn: UIButton!
    @IBOutlet weak var p3EditBtn: UIButton!
    
    // Player 4 outlets
    @IBOutlet weak var player4: UILabel!
    @IBOutlet weak var p4SubtractBtn: UIButton!
    @IBOutlet weak var p4AddBtn: UIButton!
    @IBOutlet weak var p4Subtract5Btn: UIButton!
    @IBOutlet weak var p4Add5Btn: UIButton!
    @IBOutlet weak var p4EditBtn: UIButton!
    
    // Player 5 outlets
    @IBOutlet weak var player5: UILabel!
    @IBOutlet weak var p5SubtractBtn: UIButton!
    @IBOutlet weak var p5AddBtn: UIButton!
    @IBOutlet weak var p5Subtract5Btn: UIButton!
    @IBOutlet weak var p5Add5Btn: UIButton!
    @IBOutlet weak var p5EditBtn: UIButton!
    
    // Player 6 outlets
    @IBOutlet weak var player6: UILabel!
    @IBOutlet weak var p6SubtractBtn: UIButton!
    @IBOutlet weak var p6AddBtn: UIButton!
    @IBOutlet weak var p6Subtract5btn: UIButton!
    @IBOutlet weak var p6Add5Btn: UIButton!
    @IBOutlet weak var p6EditBtn: UIButton!
    
    // Player 7 outlets
    @IBOutlet weak var player7: UILabel!
    @IBOutlet weak var p7SubtractBtn: UIButton!
    @IBOutlet weak var p7AddBtn: UIButton!
    @IBOutlet weak var p7Subtract5Btn: UIButton!
    @IBOutlet weak var p7Add5Btn: UIButton!
    @IBOutlet weak var p7EditBtn: UIButton!
    
    // Player 8 outlets
    @IBOutlet weak var player8: UILabel!
    @IBOutlet weak var p8SubtractBtn: UIButton!
    @IBOutlet weak var p8AddBtn: UIButton!
    @IBOutlet weak var p8Subtract5Btn: UIButton!
    @IBOutlet weak var p8Add5Btn: UIButton!
    @IBOutlet weak var p8EditBtn: UIButton!
    
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
                p3EditBtn.isHidden = false
                p3LifeValue = 20
                remove3Btn.isHidden = false
                historyTextContent.append("\nPlayer 3 was added to the game")
            } else if numberOfPlayers == 4 {
                p4Life.isHidden = false
                player4.isHidden = false
                p4SubtractBtn.isHidden = false
                p4AddBtn.isHidden = false
                p4Subtract5Btn.isHidden = false
                p4Add5Btn.isHidden = false
                p4EditBtn.isHidden = false
                p4LifeValue = 20
                remove3Btn.isHidden = true
                remove4Btn.isHidden = false
                historyTextContent.append("\nPlayer 4 was added to the game")
            } else if numberOfPlayers == 5 {
                p5Life.isHidden = false
                player5.isHidden = false
                p5SubtractBtn.isHidden = false
                p5AddBtn.isHidden = false
                p5Subtract5Btn.isHidden = false
                p5Add5Btn.isHidden = false
                p5EditBtn.isHidden = false
                p5LifeValue = 20
                remove4Btn.isHidden = true
                remove5Btn.isHidden = false
                historyTextContent.append("\nPlayer 5 was added to the game")
            } else if numberOfPlayers == 6 {
                p6Life.isHidden = false
                player6.isHidden = false
                p6SubtractBtn.isHidden = false
                p6AddBtn.isHidden = false
                p6Subtract5btn.isHidden = false
                p6Add5Btn.isHidden = false
                p6EditBtn.isHidden = false
                p6LifeValue = 20
                remove5Btn.isHidden = true
                remove6Btn.isHidden = false
                historyTextContent.append("\nPlayer 6 was added to the game")
            } else if numberOfPlayers == 7 {
                p7Life.isHidden = false
                player7.isHidden = false
                p7SubtractBtn.isHidden = false
                p7AddBtn.isHidden = false
                p7Subtract5Btn.isHidden = false
                p7Add5Btn.isHidden = false
                p7EditBtn.isHidden = false
                p7LifeValue = 20
                remove6Btn.isHidden = true
                remove7Btn.isHidden = false
                historyTextContent.append("\nPlayer 7 was added to the game")
            } else {
                p8Life.isHidden = false
                player8.isHidden = false
                p8SubtractBtn.isHidden = false
                p8AddBtn.isHidden = false
                p8Subtract5Btn.isHidden = false
                p8Add5Btn.isHidden = false
                p8EditBtn.isHidden = false
                p8LifeValue = 20
                remove7Btn.isHidden = true
                remove8Btn.isHidden = false
                historyTextContent.append("\nPlayer 8 was added to the game")
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
        p3EditBtn.isHidden = true
        numberOfPlayers = 2
        historyTextContent.append("\nPlayer 3 was removed from the game")
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
        p4EditBtn.isHidden = true
        numberOfPlayers = 3
        historyTextContent.append("\nPlayer 4 was removed from the game")
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
        p5EditBtn.isHidden = true
        numberOfPlayers = 4
        historyTextContent.append("\nPlayer 5 was removed from the game")
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
        p6EditBtn.isHidden = true
        numberOfPlayers = 5
        historyTextContent.append("\nPlayer 6 was removed from the game")
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
        p7EditBtn.isHidden = true
        numberOfPlayers = 6
        historyTextContent.append("\nPlayer 7 was removed from the game")
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
        p8EditBtn.isHidden = true
        numberOfPlayers = 7
        historyTextContent.append("\nPlayer 8 was removed from the game")
    }
    
    
    // PLAYER 1
    var p1BtnValue = 5
    @IBAction func p1Add(_ sender: Any) {
        addPlayerBtn.isHidden = true
        p1LifeValue = p1LifeValue + 1
        p1Life.text = String(p1LifeValue)
        historyTextContent.append("\nPlayer 1 gained a life")
    }
    
    @IBAction func p1Add5(_ sender: Any) {
        addPlayerBtn.isHidden = true
        p1LifeValue = p1LifeValue + p1BtnValue
        p1Life.text = String(p1LifeValue)
        historyTextContent.append("\nPlayer 1 gained \(p1BtnValue) lives")
    }
    
    @IBAction func p1Subtract(_ sender: Any) {
        addPlayerBtn.isHidden = true
        p1LifeValue = p1LifeValue - 1
        p1Life.text = String(p1LifeValue)
        didPlayerLose(p1LifeValue, playerNum: "one")
        historyTextContent.append("\nPlayer 1 lost a life")
    }
    
    @IBAction func p1Subtract5(_ sender: Any) {
        addPlayerBtn.isHidden = true
        p1LifeValue = p1LifeValue - p1BtnValue
        p1Life.text = String(p1LifeValue)
        historyTextContent.append("\nPlayer 1 lost \(p1BtnValue) lives")
        didPlayerLose(p1LifeValue, playerNum: "one")
    }
    
    @IBAction func p1Edit(_ sender: Any) {
        let alert1 = UIAlertController(title: "Edit number", message: "Please enter a numberic value", preferredStyle: .alert)
        alert1.addTextField { (textField) in textField.text = ""}
        alert1.addAction(UIAlertAction(title: "OK", style: .default, handler: { [weak alert1] (_) in
            let textField = alert1!.textFields![0]
            self.p1BtnValue = Int(textField.text!)!
            self.p1Add5Btn.setTitle(String("+\(self.p1BtnValue)"), for: .normal)
            self.p1Subtract5Btn.setTitle(String("-\(self.p1BtnValue)"), for: .normal)
        }))
        self.present(alert1, animated: true, completion: nil)
    }
    
    
    
    // PLAYER 2
    var p2BtnValue = 5
    @IBAction func p2Add(_ sender: Any) {
        addPlayerBtn.isHidden = true
        p2LifeValue = p2LifeValue + 1
        p2Life.text = String(p2LifeValue)
        historyTextContent.append("\nPlayer 2 gained a life")
    }
    
    @IBAction func p2Add5(_ sender: Any) {
        addPlayerBtn.isHidden = true
        p2LifeValue = p2LifeValue - p2BtnValue
        p2Life.text = String(p2LifeValue)
        historyTextContent.append("\nPlayer 2 lost \(p2BtnValue) lives")
        didPlayerLose(p2LifeValue, playerNum: "two")
    }
    
    @IBAction func p2Subtract(_ sender: Any) {
        addPlayerBtn.isHidden = true
        p2LifeValue = p2LifeValue - 1
        p2Life.text = String(p2LifeValue)
        didPlayerLose(p2LifeValue, playerNum: "two")
        historyTextContent.append("\nPlayer 2 lost a life")
    }
    
    @IBAction func p2Subtract5(_ sender: Any) {
        addPlayerBtn.isHidden = true
        p2LifeValue = p2LifeValue + p2BtnValue
        p2Life.text = String(p2LifeValue)
        historyTextContent.append("\nPlayer 2 gained \(p2BtnValue) lives")
    }
    
    @IBAction func p2Edit(_ sender: Any) {
        let alert2 = UIAlertController(title: "Edit number", message: "Please enter a numberic value", preferredStyle: .alert)
        alert2.addTextField { (textField) in textField.text = ""}
        alert2.addAction(UIAlertAction(title: "OK", style: .default, handler: { [weak alert2] (_) in
            let textField = alert2!.textFields![0]
            self.p2BtnValue = Int(textField.text!)!
            self.p2Subtract5Btn.setTitle(String("-\(self.p2BtnValue)"), for: .normal)
            self.p2Add5Btn.setTitle(String("+\(self.p2BtnValue)"), for: .normal)
        }))
        self.present(alert2, animated: true, completion: nil)
    }
    
    
    
    
    // PLAYER 3
    var p3BtnValue = 5
    @IBAction func p3Subtract(_ sender: Any) {
        addPlayerBtn.isHidden = true
        p3LifeValue = p3LifeValue - 1
        p3Life.text = String(p3LifeValue)
        didPlayerLose(p3LifeValue, playerNum: "three")
        historyTextContent.append("\nPlayer 3 lost a life")
    }
    
    @IBAction func p3Add(_ sender: Any) {
        addPlayerBtn.isHidden = true
        p3LifeValue = p3LifeValue + 1
        p3Life.text = String(p3LifeValue)
        historyTextContent.append("\nPlayer 3 gained a life")
    }
    
    @IBAction func p3Subtract5(_ sender: Any) {
        addPlayerBtn.isHidden = true
        p3LifeValue = p3LifeValue - p3BtnValue
        p3Life.text = String(p3LifeValue)
        historyTextContent.append("\nPlayer 3 lost \(p3BtnValue) lives")
        didPlayerLose(p3LifeValue, playerNum: "three")
    }
    
    @IBAction func p3Add5(_ sender: Any) {
        addPlayerBtn.isHidden = true
        p3LifeValue = p3LifeValue + p3BtnValue
        p3Life.text = String(p3LifeValue)
        historyTextContent.append("\nPlayer 3 gained \(p3BtnValue) lives")
    }
    
    @IBAction func p3Edit(_ sender: Any) {
        let alert3 = UIAlertController(title: "Edit number", message: "Please enter a numberic value", preferredStyle: .alert)
        alert3.addTextField { (textField) in textField.text = ""}
        alert3.addAction(UIAlertAction(title: "OK", style: .default, handler: { [weak alert3] (_) in
            let textField = alert3!.textFields![0]
            self.p3BtnValue = Int(textField.text!)!
            self.p3Subtract5Btn.setTitle(String("-\(self.p3BtnValue)"), for: .normal)
            self.p3Add5Btn.setTitle(String("+\(self.p3BtnValue)"), for: .normal)
        }))
        self.present(alert3, animated: true, completion: nil)
    }
    
    
    // PLAYER 4
    var p4BtnValue = 5
    @IBAction func p4Subtract(_ sender: Any) {
        addPlayerBtn.isHidden = true
        p4LifeValue = p4LifeValue - 1
        p4Life.text = String(p4LifeValue)
        didPlayerLose(p4LifeValue, playerNum: "four")
        historyTextContent.append("\nPlayer 4 lost a life")
    }
    
    @IBAction func p4Add(_ sender: Any) {
        addPlayerBtn.isHidden = true
        p4LifeValue = p4LifeValue + 1
        p4Life.text = String(p4LifeValue)
        historyTextContent.append("\nPlayer 4 gained a life")
    }
    
    @IBAction func p4Subtract5(_ sender: Any) {
        addPlayerBtn.isHidden = true
        p4LifeValue = p3LifeValue - p4BtnValue
        p4Life.text = String(p4LifeValue)
        historyTextContent.append("\nPlayer 4 lost \(p4BtnValue) lives")
        didPlayerLose(p4LifeValue, playerNum: "four")
    }
    
    @IBAction func p4Add5(_ sender: Any) {
        addPlayerBtn.isHidden = true
        p4LifeValue = p4LifeValue + p4BtnValue
        p4Life.text = String(p4LifeValue)
        historyTextContent.append("\nPlayer 4 gained \(p4BtnValue) lives")
    }
    
    @IBAction func p4Edit(_ sender: Any) {
        let alert4 = UIAlertController(title: "Edit number", message: "Please enter a numberic value", preferredStyle: .alert)
        alert4.addTextField { (textField) in textField.text = ""}
        alert4.addAction(UIAlertAction(title: "OK", style: .default, handler: { [weak alert4] (_) in
            let textField = alert4!.textFields![0]
            self.p4BtnValue = Int(textField.text!)!
            self.p4Subtract5Btn.setTitle(String("-\(self.p4BtnValue)"), for: .normal)
            self.p4Add5Btn.setTitle(String("+\(self.p4BtnValue)"), for: .normal)
        }))
        self.present(alert4, animated: true, completion: nil)
    }
    
    
    // PLAYER 5
    var p5BtnValue = 5
    @IBAction func p5Subtract(_ sender: Any) {
        addPlayerBtn.isHidden = true
        p5LifeValue = p5LifeValue - 1
        p5Life.text = String(p5LifeValue)
        didPlayerLose(p5LifeValue, playerNum: "five")
        historyTextContent.append("\nPlayer 5 lost a life")
    }
    @IBAction func p5Add(_ sender: Any) {
        addPlayerBtn.isHidden = true
        p5LifeValue = p5LifeValue + 1
        p5Life.text = String(p5LifeValue)
        historyTextContent.append("\nPlayer 5 gained a life")
    }
    @IBAction func p5Subtract5(_ sender: Any) {
        addPlayerBtn.isHidden = true
        p5LifeValue = p5LifeValue - p5BtnValue
        p5Life.text = String(p5LifeValue)
        historyTextContent.append("\nPlayer 5 lost \(p5BtnValue) lives")
        didPlayerLose(p5LifeValue, playerNum: "five")
    }
    @IBAction func p5Add5(_ sender: Any) {
        addPlayerBtn.isHidden = true
        p5LifeValue = p5LifeValue + p5BtnValue
        p5Life.text = String(p5LifeValue)
        historyTextContent.append("\nPlayer 5 gained \(p5BtnValue) lives")
    }
    
    @IBAction func p5Edit(_ sender: Any) {
        let alert5 = UIAlertController(title: "Edit number", message: "Please enter a numberic value", preferredStyle: .alert)
        alert5.addTextField { (textField) in textField.text = ""}
        alert5.addAction(UIAlertAction(title: "OK", style: .default, handler: { [weak alert5] (_) in
            let textField = alert5!.textFields![0]
            self.p5BtnValue = Int(textField.text!)!
            self.p5Subtract5Btn.setTitle(String("-\(self.p5BtnValue)"), for: .normal)
            self.p5Add5Btn.setTitle(String("+\(self.p5BtnValue)"), for: .normal)
        }))
        self.present(alert5, animated: true, completion: nil)
    }
    
    
    
    
    // PLAYER 6
    var p6BtnValue = 5
    @IBAction func p6Subtract(_ sender: Any) {
        addPlayerBtn.isHidden = true
        p6LifeValue = p6LifeValue - 1
        p6Life.text = String(p6LifeValue)
        didPlayerLose(p6LifeValue, playerNum: "six")
        historyTextContent.append("\nPlayer 6 lost a life")
    }
    @IBAction func p6Add(_ sender: Any) {
        addPlayerBtn.isHidden = true
        p6LifeValue = p6LifeValue + 1
        p6Life.text = String(p6LifeValue)
        historyTextContent.append("\nPlayer 6 gained a life")
    }
    @IBAction func p6Subtract5(_ sender: Any) {
        addPlayerBtn.isHidden = true
        p6LifeValue = p6LifeValue - p6BtnValue
        p6Life.text = String(p6LifeValue)
        historyTextContent.append("\nPlayer 6 lost \(p6BtnValue) lives")
        didPlayerLose(p6LifeValue, playerNum: "six")
    }
    @IBAction func p6Add5(_ sender: Any) {
        addPlayerBtn.isHidden = true
        p6LifeValue = p6LifeValue + p6BtnValue
        p6Life.text = String(p6LifeValue)
        historyTextContent.append("\nPlayer 6 gained \(p6BtnValue) lives")
    }
    
    @IBAction func p6Edit(_ sender: Any) {
        let alert6 = UIAlertController(title: "Edit number", message: "Please enter a numberic value", preferredStyle: .alert)
        alert6.addTextField { (textField) in textField.text = ""}
        alert6.addAction(UIAlertAction(title: "OK", style: .default, handler: { [weak alert6] (_) in
            let textField = alert6!.textFields![0]
            self.p6BtnValue = Int(textField.text!)!
            self.p6Subtract5btn.setTitle(String("-\(self.p6BtnValue)"), for: .normal)
            self.p6Add5Btn.setTitle(String("+\(self.p6BtnValue)"), for: .normal)
        }))
        self.present(alert6, animated: true, completion: nil)
    }
    
    
    
    
    // PLAYER 7
    var p7BtnValue = 5
    @IBAction func p7Subtract(_ sender: Any) {
        addPlayerBtn.isHidden = true
        p7LifeValue = p7LifeValue - 1
        p7Life.text = String(p7LifeValue)
        didPlayerLose(p7LifeValue, playerNum: "seven")
        historyTextContent.append("\nPlayer 7 lost a life")
    }
    @IBAction func p7Add(_ sender: Any) {
        addPlayerBtn.isHidden = true
        p7LifeValue = p7LifeValue + 1
        p7Life.text = String(p7LifeValue)
        historyTextContent.append("\nPlayer 7 gained a life")
    }
    @IBAction func p7Subtract5(_ sender: Any) {
        addPlayerBtn.isHidden = true
        p7LifeValue = p7LifeValue - p7BtnValue
        p7Life.text = String(p7LifeValue)
        historyTextContent.append("\nPlayer 7 lost \(p7BtnValue) lives")
        didPlayerLose(p7LifeValue, playerNum: "seven")
    }
    @IBAction func p7Add5(_ sender: Any) {
        addPlayerBtn.isHidden = true
        p7LifeValue = p7LifeValue + p7BtnValue
        p7Life.text = String(p7LifeValue)
        historyTextContent.append("\nPlayer 7 gained \(p7BtnValue) lives")
    }
    
    @IBAction func p7Edit(_ sender: Any) {
        let alert7 = UIAlertController(title: "Edit number", message: "Please enter a numberic value", preferredStyle: .alert)
        alert7.addTextField { (textField) in textField.text = ""}
        alert7.addAction(UIAlertAction(title: "OK", style: .default, handler: { [weak alert7] (_) in
            let textField = alert7!.textFields![0]
            self.p7BtnValue = Int(textField.text!)!
            self.p7Subtract5Btn.setTitle(String("-\(self.p7BtnValue)"), for: .normal)
            self.p7Add5Btn.setTitle(String("+\(self.p7BtnValue)"), for: .normal)
        }))
        self.present(alert7, animated: true, completion: nil)
    }
    
    
    
    // PLAYER 8
    var p8BtnValue = 5
    @IBAction func p8Subtract(_ sender: Any) {
        addPlayerBtn.isHidden = true
        p8LifeValue = p8LifeValue - 1
        p8Life.text = String(p8LifeValue)
        didPlayerLose(p8LifeValue, playerNum: "eight")
        historyTextContent.append("\nPlayer 8 lost a life")
    }
    @IBAction func p8Add(_ sender: Any) {
        addPlayerBtn.isHidden = true
        p8LifeValue = p8LifeValue + 1
        p8Life.text = String(p8LifeValue)
        historyTextContent.append("\nPlayer 8 gained a life")
    }
    @IBAction func p8Subtract5(_ sender: Any) {
        addPlayerBtn.isHidden = true
        p8LifeValue = p8LifeValue - p8BtnValue
        p8Life.text = String(p8LifeValue)
        historyTextContent.append("\nPlayer 8 lost \(p8BtnValue) lives")
        didPlayerLose(p8LifeValue, playerNum: "eight")
    }
    @IBAction func p8Add5(_ sender: Any) {
        addPlayerBtn.isHidden = true
        p8LifeValue = p8LifeValue + p8BtnValue
        p8Life.text = String(p8LifeValue)
        historyTextContent.append("\nPlayer 8 gained \(p8BtnValue) lives")
    }
    
    @IBAction func p8Edit(_ sender: Any) {
        let alert8 = UIAlertController(title: "Edit number", message: "Please enter a numberic value", preferredStyle: .alert)
        alert8.addTextField { (textField) in textField.text = ""}
        alert8.addAction(UIAlertAction(title: "OK", style: .default, handler: { [weak alert8] (_) in
            let textField = alert8!.textFields![0]
            self.p8BtnValue = Int(textField.text!)!
            self.p8Subtract5Btn.setTitle(String("-\(self.p8BtnValue)"), for: .normal)
            self.p8Add5Btn.setTitle(String("+\(self.p8BtnValue)"), for: .normal)
        }))
        self.present(alert8, animated: true, completion: nil)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        p5Life.isHidden = true
        player5.isHidden = true
        p5SubtractBtn.isHidden = true
        p5AddBtn.isHidden = true
        p5Subtract5Btn.isHidden = true
        p5Add5Btn.isHidden = true
        p5EditBtn.isHidden = true
        p6Life.isHidden = true
        player6.isHidden = true
        p6SubtractBtn.isHidden = true
        p6AddBtn.isHidden = true
        p6Subtract5btn.isHidden = true
        p6Add5Btn.isHidden = true
        p6EditBtn.isHidden = true
        p7Life.isHidden = true
        player7.isHidden = true
        p7SubtractBtn.isHidden = true
        p7AddBtn.isHidden = true
        p7Subtract5Btn.isHidden = true
        p7Add5Btn.isHidden = true
        p7EditBtn.isHidden = true
        p8Life.isHidden = true
        player8.isHidden = true
        p8SubtractBtn.isHidden = true
        p8AddBtn.isHidden = true
        p8Subtract5Btn.isHidden = true
        p8Add5Btn.isHidden = true
        p8EditBtn.isHidden = true
    
        remove3Btn.isHidden = true
        remove4Btn.isHidden = false
        remove5Btn.isHidden = true
        remove6Btn.isHidden = true
        remove7Btn.isHidden = true
        remove8Btn.isHidden = true
    }
}
