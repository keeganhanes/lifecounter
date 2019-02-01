//
//  HistoryViewController.swift
//  lifecounter
//
//  Created by Keegan Hanes on 1/31/19.
//  Copyright © 2019 Keegan Hanes. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController {
    
    @IBAction func backBtn(_ sender: Any) {
        performSegue(withIdentifier: "segueBack", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
