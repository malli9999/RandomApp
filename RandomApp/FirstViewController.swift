//
//  FirstViewController.swift
//  RandomApp
//
//  Created by Student on 2/27/19.
//  Copyright © 2019 Student. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var guessval: UITextField!
    
    @IBOutlet weak var output: UILabel!
    
    @IBAction func checkAns(_ sender: Any) {
        let guess = Guesser.shared
        if let guessValue = Int(guessval.text!)
        {
            if guessValue < 1
            {
                output.text = "number is invalid"
            }
            else if guessValue > 10
            {
                output.text = "Number is invalid"
            }
            else
            {
                let output1 = guess.amIRight(guess: guessValue)
                if(output1 == "Correct")
                {
                     output.text = "\(output1)"
                    displayMessage()
                    guess.createNewProblem()
                    
                }else{
                    output.text = "\(output1)"
                }
            }
        }
        else
        {
            output.text = "Number is invalid"
        }
        
       
    }
    
    @IBAction func newprob(_ sender: Any) {
        guessval.text = ""
        output.text = ""
        
        let guess = Guesser.shared
        guess.createNewProblem()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let guess = Guesser.shared
        guess.createNewProblem()
    }
    
   
    func displayMessage(){
        let guess = Guesser.shared
        let alert = UIAlertController(title: "Well done",
                                      message: "You got it in \(guess.numAttemps) tries",
            preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default,
                                      handler: nil))
        self.present(alert, animated: true, completion: nil)
        
    }
    



}

