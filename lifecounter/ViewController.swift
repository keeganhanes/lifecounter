//
//  ViewController.swift
//  lifecounter
//
//  Created by Keegan Hanes on 1/26/19.
//  Copyright © 2019 Keegan Hanes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var p1Life: UILabel!
    var p1LifeValue = 0
    @IBOutlet weak var p2Life: UILabel!
    var p2LifeValue = 0
    @IBOutlet weak var p3Life: UILabel!
    var p3LifeValue = 0
    @IBOutlet weak var p4Life: UILabel!
    var p4LifeValue = 0
    
    @IBAction func p1Add(_ sender: Any) {
        p1LifeValue = p1LifeValue + 1
        p1Life.text = String(p1LifeValue)
    }
    
    @IBAction func p1Add5(_ sender: Any) {
        p1LifeValue = p1LifeValue + 5
        p1Life.text = String(p1LifeValue)
    }
    
    @IBAction func p1Subtract(_ sender: Any) {
        p1LifeValue = p1LifeValue - 1
        p1Life.text = String(p1LifeValue)
    }
    
    @IBAction func p1Subtract5(_ sender: Any) {
        p1LifeValue = p1LifeValue - 5
        p1Life.text = String(p1LifeValue)
    }
    
    @IBAction func p2Add(_ sender: Any) {
        p2LifeValue = p2LifeValue + 1
        p2Life.text = String(p2LifeValue)
    }
    
    @IBAction func p2Add5(_ sender: Any) {
        p2LifeValue = p2LifeValue - 5
        p2Life.text = String(p2LifeValue)
    }
    
    @IBAction func p2Subtract(_ sender: Any) {
        p2LifeValue = p2LifeValue - 1
        p2Life.text = String(p2LifeValue)
    }
    
    @IBAction func p2Subtract5(_ sender: Any) {
        p2LifeValue = p2LifeValue + 5
        p2Life.text = String(p2LifeValue)
    }
    
    @IBAction func p3Subtract(_ sender: Any) {
        p3LifeValue = p3LifeValue - 1
        p3Life.text = String(p3LifeValue)
    }
    
    @IBAction func p3Add(_ sender: Any) {
        p3LifeValue = p3LifeValue + 1
        p3Life.text = String(p3LifeValue)
    }
    
    @IBAction func p3Subtract5(_ sender: Any) {
        p3LifeValue = p3LifeValue - 5
        p3Life.text = String(p3LifeValue)
    }
    
    @IBAction func p3Add5(_ sender: Any) {
        p3LifeValue = p3LifeValue + 5
        p3Life.text = String(p3LifeValue)
    }
    
    @IBAction func p4Subtract(_ sender: Any) {
        p4LifeValue = p4LifeValue - 1
        p4Life.text = String(p4LifeValue)
    }
    
    @IBAction func p4Add(_ sender: Any) {
        p4LifeValue = p4LifeValue + 1
        p4Life.text = String(p4LifeValue)
    }
    
    @IBAction func p4Subtract5(_ sender: Any) {
        p4LifeValue = p4LifeValue - 5
        p4Life.text = String(p4LifeValue)
    }
    
    @IBAction func p4Add5(_ sender: Any) {
        p4LifeValue = p4LifeValue + 5
        p4Life.text = String(p4LifeValue)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}

