//
//  ViewController.swift
//  dice
//
//  Created by Eng.lolla on 10/28/18.
//  Copyright © 2018 Eng.lolla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let arr =  ["dice1","dice2","dice3","dice4","dice5","dice6"]
    var RandamDiceIndex1:Int = 0
    var RandamDiceIndex2:Int = 0
    @IBOutlet weak var DiceImageView2: UIImageView!
    @IBOutlet weak var DiceImageView1: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       updateDice ()
    }

    @IBAction func click(_ sender: UIButton) {
        updateDice ()
    }
    func updateDice ()
    {
        RandamDiceIndex1 = Int.random(in: 0 ... 5)
        RandamDiceIndex2 = Int.random(in: 0 ... 5)
        DiceImageView1.image = UIImage (named: arr[RandamDiceIndex2])
        DiceImageView2.image = UIImage (named: arr[RandamDiceIndex1])

    }
}

