//
//  ViewController.swift
//
//  Created by Kyle Martinez on 10/18/2022.
//


import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let quiz = [
        ["Four + Two is equal to Six", "True"],
        ["Five - Three is greater than One", "True"],
        ["Three + Eight is less than Ten", "False"]
    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle  //True, False
        let actualAnser = quiz[questionNumber][1]
        
        if userAnswer == actualAnser {
            print("Correct!")
        } else {
            print("Incorrect!")
        }
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
        
        
        updateUI()
    }
    
        func updateUI() {
            questionLabel.text = quiz[questionNumber][0]
        }
}

