//
//  ViewController.swift
//  FirstApp
//
//  Created by KimChoonSik on 2023/01/03.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var mainLabel: UILabel!
    
    @IBOutlet weak var myButton: UIButton!
    
    
    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        mainLabel.backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        mainLabel.text = "너무 귀엽습니다!"
        mainLabel.textColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
        mainLabel.textAlignment = NSTextAlignment.center
        
        //        myButton.backgroundColor = UIColor.cyan
        myButton.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        myButton.setTitleColor(.black, for: .normal)
        myButton.setTitle("인정하시죠?", for: .normal)
        
        image.image = #imageLiteral(resourceName: "제목 2.png")
        
    }
}


