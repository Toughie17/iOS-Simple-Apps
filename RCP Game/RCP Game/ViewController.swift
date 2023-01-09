//
//  ViewController.swift
//  RCP Game
//
//  Created by KimChoonSik on 2023/01/07.
//

import UIKit

class ViewController: UIViewController {

    //속성
    @IBOutlet weak var mainLabel: UILabel!
    
    @IBOutlet weak var comImageView: UIImageView!
    @IBOutlet weak var myImageView: UIImageView!
    
    
    @IBOutlet weak var comChoiceLabel: UILabel!
    @IBOutlet weak var myChoiceLabel: UILabel!
    
    var comChoice: Rps = Rps(rawValue: Int.random(in: 0...2))!
    
    var myChoice: Rps = Rps.rock
    
    
    
    //메서드
    // 앱의 화면에 들어오면 처음 실행되는 함수
    override func viewDidLoad() {
        super.viewDidLoad()
        // 1) 첫번째/두번째 이미지뷰에 준비 이미지를 띄워야 함
        comImageView.image = #imageLiteral(resourceName: "ready")
        myImageView.image = UIImage(named: "ready.png")
        
        // 2) 첫번쨰/두번쨰 레이블에 "준비"라고 문자열을 띄워야 함
        comChoiceLabel.text = "준비"
        myChoiceLabel.text = "준비"
        
    }
    

    @IBAction func rpsButtonTapped(_ sender: UIButton) {
        // 가위/바위/보를 선택해서 그 정보를 저장해야됨
//        guard let title = sender.currentTitle else { return }
        let title = sender.currentTitle! //버튼의 문자를 가져옴
        print(title)
        
        switch title {
        case "가위":
            myChoice = Rps.scissors
        case "바위":
            myChoice = Rps.rock
        case "보":
            myChoice = Rps.paper
        default:
            break
            
        }
        
        
        
    }
    
    @IBAction func selectButtonTapped(_ sender: UIButton) {
        // 1) 컴퓨터가 랜덤 선택한 것을 이미지뷰에 표시
        // 2) 컴퓨터가 랜덤 선택한 것을 레이블에 표시
        switch comChoice {
        case Rps.rock:
            comImageView.image = #imageLiteral(resourceName: "rock")
            comChoiceLabel.text = "바위"
            
        case Rps.paper:
            comImageView.image = #imageLiteral(resourceName: "paper")
            comChoiceLabel.text = "보"
            
        case Rps.scissors:
            comImageView.image = #imageLiteral(resourceName: "scissors")
            comChoiceLabel.text = "가위"
        }
        // 3) 내가 선택한 것을 이미지뷰에 표시
        // 4) 내가 선택한 것을 레이블에 표시
        // 5) 컴퓨터가 선택한 것과 내가 선택한 것을 비교해서 이겼는지 졌는지 판단/표시
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        // 1) 컴퓨터 다시 준비 이미지뷰에 표시
        // 2) 컴퓨터 다시 준비 레이블에 표시
        // 3) 나 다시 준비 이미지뷰에 표시
        // 4) 나 다시 준비 레이블에 표시
        // 5) 메인 레이블 "선택하세요" 표시
        // 6) 컴퓨터가 다시 랜덤 가위/바위/보를 선택하고 저장
        
    }
    

}



