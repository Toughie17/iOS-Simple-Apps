//
//  ViewController.swift
//  iosUpdownGame
//
//  Created by KimChoonSik on 2023/01/10.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    var computerChoice: UInt = UInt.random(in: 1...10)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        numberLabel.text = ""
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        guard let numString = sender.currentTitle else { return }
        numberLabel.text = numString
    }
    
    
    @IBAction func selectButtonTapped(_ sender: UIButton) {
        
        guard let numString = numberLabel.text else { return }
        guard let myChoice = UInt(numString) else { return }
        
        if computerChoice > myChoice {
            mainLabel.text = "Up 😜"
        } else if computerChoice < myChoice {
            mainLabel.text = "Down 👻"
        } else {
            mainLabel.text = "Bingo! 🥳"
        }
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        
        mainLabel.text = "선택하세요"
        computerChoice = UInt.random(in: 1...10)
        numberLabel.text = ""
    }
}

