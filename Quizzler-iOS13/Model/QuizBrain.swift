//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Austin Brovick on 12/25/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    let quiz = [
        Question(text:"Four + Two is equal to Six.", answer:"True"),
        Question(text:"Five - Three is greater than One.", answer:"True"),
        Question(text:"Three + Eight is less than Ten.", answer:"False")
    ]
    
    var questionNumber = 0
    
    
    func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            return true
        } else {
            return false
        }
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
        return (Float(questionNumber + 1)/Float(quiz.count))
    }
    
    mutating func nextQuestion() {
        questionNumber += 1
        questionNumber %= quiz.count
    }
}
