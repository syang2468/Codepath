//
//  ViewController.swift
//  Flashcards
//
//  Created by Sofia Yang on 2/19/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var frontLabel: UILabel!
    @IBOutlet weak var backLabel: UILabel!
    @IBOutlet weak var correctAnswer: UILabel!
    
    @IBOutlet weak var choiceOne: UIButton!
    @IBOutlet weak var choiceTwo: UIButton!
    @IBOutlet weak var choiceThree: UIButton!
    
    @IBOutlet weak var restart: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        frontLabel.layer.cornerRadius = 20.0
        backLabel.layer.cornerRadius = 20.0
        correctAnswer.layer.cornerRadius = 20.0
        frontLabel.clipsToBounds = true
        backLabel.clipsToBounds = true
        correctAnswer.clipsToBounds = true
        correctAnswer.isHidden = true
        
        choiceOne.layer.cornerRadius = 20.0
        choiceTwo.layer.cornerRadius = 20.0
        choiceThree.layer.cornerRadius = 20.0
        choiceOne.clipsToBounds = true
        choiceTwo.clipsToBounds = true
        choiceThree.clipsToBounds = true
        
        restart.layer.cornerRadius = 20.0
        restart.clipsToBounds = true
        restart.isHidden = true
    }
    @IBAction func didTapOnFlashcard(_ sender: Any) {
        if(frontLabel.isHidden) {
            frontLabel.isHidden = false
        }
        else {
            frontLabel.isHidden = true
        }
    }
    @IBAction func didTapOne(_ sender: Any) {
        choiceOne.isHidden = true
    }
    @IBAction func didTapTwo(_ sender: Any) {
        frontLabel.isHidden = true
        backLabel.isHidden = true
        choiceOne.isHidden = true
        choiceThree.isHidden = true
        correctAnswer.isHidden = false
        restart.isHidden = false
    }
    @IBAction func didTapThree(_ sender: Any) {
        choiceThree.isHidden = true
    }
    
    @IBAction func tapRestart(_ sender: Any) {
        frontLabel.isHidden = false
        backLabel.isHidden = false
        correctAnswer.isHidden = true
        choiceOne.isHidden = false
        choiceThree.isHidden = false
        restart.isHidden = true
    }
}

