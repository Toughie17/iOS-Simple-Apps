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
    //컴퓨터가 랜덤으로 숫자 선택 (1~10)
    var computerChoice: UInt = UInt.random(in: 1...10)
    var myChoice: UInt = 0
    
    // 앱의 화면에 들어오면 가장 처음에 실행되는 함수
    override func viewDidLoad() {
        super.viewDidLoad()
        // 1) 메인레이블에 "선택하세요" 표시
        mainLabel.text = "선택하세요 🤔"
        // 2) 숫자레이블은 ""
        numberLabel.text = ""
        

    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        // 1) 버튼의 숫자를 가져와야함
        guard let numString = sender.currentTitle else { return }
        numberLabel.text = numString
        
        guard let num = UInt(numString) else { return }
        myChoice = num
        // 2) 숫자 레이블이 변하도록 (숫자에 따라)
        // 3) 선택한 숫자를 변수에 저장
        
    }
    
    
    @IBAction func selectButtonTapped(_ sender: UIButton) {
        
        if computerChoice > myChoice {
            mainLabel.text = "Up 😜"
        } else if computerChoice < myChoice {
            mainLabel.text = "Down 👻"
        } else {
            mainLabel.text = "Bingo! 🥳"
        }
        // 1) 컴퓨터의 숫자와 내가 선택한 숫자를 비교 UP/Down/Bingo (메인레이블)
        
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        
        // 1) 메인레이블 "선택하세요
        mainLabel.text = "선택하세요"
        // 2) 컴퓨터의 랜덤숫자를 다시 선택하게
        computerChoice = UInt.random(in: 1...10)
        // 3) 숫자레이블을 다시 ""로
        numberLabel.text = ""
    }
    
    
    
}

