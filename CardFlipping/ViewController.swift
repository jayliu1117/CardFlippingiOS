//
//  ViewController.swift
//  CardFlipping
//
//  Created by Yu-Jeh Liu on 8/12/19.
//  Copyright © 2019 Yu-Jeh Liu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var Count = 0{
        didSet{
            FlipCount.text = "Flips: \(Count)"
        }
    }
    
    var Emojis = ["🥺","😂","☠️","🥺","😂"]
    @IBOutlet weak var FlipCount: UITextField!
    @IBOutlet var Cards: [UIButton]!
    
    @IBAction func touchCard(_ sender: UIButton) {
        Count += 1
        let cardNumber = Cards.firstIndex(of: sender)!
        flipCard(withEmoji: Emojis[cardNumber], on: sender)
        
    }
    
    func flipCard(withEmoji emoji: String, on button: UIButton){
        
        print("Emoji: \(emoji)")
        if button.currentTitle == emoji{
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 0.07660089059, green: 0.8980392157, blue: 0.7507999321, alpha: 1)
        }else{
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)}
    }
    
    
}

