//
//  ViewController.swift
//
//  Created by Kyle Martinez on 10/18/2022.
//


import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var choice1: UIButton!
    @IBOutlet weak var choice2: UIButton!
    @IBOutlet weak var choice3: UIButton!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        
        let userGotItRight = quizBrain.checkAnswer(userAnswer: userAnswer)
        
        if userGotItRight {
            sender.backgroundColor = UIColor.systemGreen
        } else {
            sender.backgroundColor = UIColor.systemRed
        }
        
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
    }
    
       @objc func updateUI() {
           questionLabel.text = quizBrain.getQuestionText()
           
           //Need to fetch the answers and update the button titles using the setTitle method.
           let answerChoices = quizBrain.getAnswers()
           choice1.setTitle(answerChoices[0], for: .normal)
           choice2.setTitle(answerChoices[1], for: .normal)
           choice3.setTitle(answerChoices[2], for: .normal)
           
           progressBar.progress = quizBrain.getProgress()
           scoreLabel.text = "Score: \(quizBrain.getScore())"
           
           choice1.backgroundColor = UIColor.clear
           choice2.backgroundColor = UIColor.clear
           choice3.backgroundColor = UIColor.clear
            
        }
}

