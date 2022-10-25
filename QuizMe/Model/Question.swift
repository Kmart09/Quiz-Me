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
    let answer: String
    
    init(q: String, a: String) {
        text = q
        answer = a 
    }
}
