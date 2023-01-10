//
//  main.swift
//  RandomBingo
//
//  Created by KimChoonSik on 2023/01/10.
//

import Foundation

var computerChoice = Int.random(in: 1...100)
var myChoice: Int = 0
var isRunning: Bool = true

print("1~100 사이의 정수를 입력해 주세요 : ",terminator: "")

while isRunning {
    
    let userInput = readLine()
    
    if let input = userInput { //readLined은 String?이기에 if let 바인딩으로 언래핑
        if let number = Int(input) { // 형변환 또한 Int? 이기에 if let 바인딩으로 언래핑
            myChoice = number
        }
    }
    
    if computerChoice > myChoice {
        print("UP")
    } else if computerChoice < myChoice {
        print("Down")
    } else {
        print("Bingo !")
        isRunning = false
    }
}
