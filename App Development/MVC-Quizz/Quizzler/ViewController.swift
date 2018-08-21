//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let allQuestions = QuestionBank()
    var pickedAnswer : Bool = false
    var questionNumber = 0
    var progress = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startOver()
    }
    
    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1 {
            pickedAnswer = true
        }
        else {
            pickedAnswer = false
        }
        checkAnswer()
    }
    
    func updateUI(question: Question, score: String) {
        progress += 1
        
        if progress == 13 {
            questionLabel.text = "Come back if you want ;)"
            
            let alert = UIAlertController(title: "Awesome", message: "You finished quizz, start over?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .destructive) { (UIAlertAction) in
                self.startOver()
            }
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
            
            
            trueButton.isHidden = true
            falseButton.isHidden = true
            //progressBar.frame.size.width = (view.frame.size.width / 12)
            //progressLabel.text = "1 / 12"
        } else {
            questionLabel.text = question.questionText
            scoreLabel.text = score
            progressLabel.text = "\(progress) / 12"
            progressBar.frame.size.width = (view.frame.size.width / 12) * CGFloat(progress)
        }
    }
    
    func nextQuestion() -> Question {
        questionNumber = Int(arc4random_uniform(11))
        return allQuestions.list[questionNumber]
    }
    
    func checkAnswer() {
        var points = Int(scoreLabel.text!)
        
        if pickedAnswer == allQuestions.list[questionNumber].answer{
            points! += 100
            ProgressHUD.showSuccess("Correct!")
            //questionLabel.text = "You are right!"
        }
        else {
            points! -= 1
            ProgressHUD.showError("Wrong!")
            //questionLabel.text = "Nope"
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(1), execute: {
            self.updateUI(question : self.nextQuestion(), score: String(points!))
        })
    }
    
    func startOver() {
        progress = 0
        //playAgainButton.isHidden = true
        trueButton.isHidden = false
        falseButton.isHidden = false
        let firstQuestion = nextQuestion()
        updateUI(question: firstQuestion, score: "0")
    }
    
}
