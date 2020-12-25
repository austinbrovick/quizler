//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Austin Brovick on 12/25/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation


struct Question {
    let text: String
    let answer: String
    
    init(text: String, answer: String) {
        self.text = text
        self.answer = answer
    }
}

