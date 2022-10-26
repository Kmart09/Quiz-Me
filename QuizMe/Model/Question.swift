//
//  Question.swift
//  QuizMe
//
//  Created by Kyle Martinez on 10/20/22.
//  Copyright © 2022 Kmart09. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    
    
    let answers: [String]
    let rightAnswer: String
    
    
    init(q: String, a: [String], correctAnswer: String) {
        text = q
        answers = a
        rightAnswer = correctAnswer
    }
}
