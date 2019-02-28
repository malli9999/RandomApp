//
//  ThirdViewController.swift
//  RandomApp
//
//  Created by Student on 2/27/19.
//  Copyright © 2019 Student. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    
    @IBOutlet weak var min: UILabel!
    
    @IBOutlet weak var max: UILabel!
    

    @IBOutlet weak var mean: UILabel!
    
    
    @IBOutlet weak var dev: UILabel!
    
    @IBAction func clearstatistics(_ sender: Any) {
   
        let Guess = Guesser.shared
        min.text = ""
        max.text = ""
        mean.text = ""
        dev.text = ""
        Guess.clearStatistics()
    
    
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let Guess = Guesser.shared
        min.text = "\(Guess.minimumNumAttempts())"
        max.text = "\(Guess.maximumNumAttempts())"
        mean.text = String(format : "%0.1f", (Guess.calculateMean()))
        dev.text = String(format : "%0.1f",Guess.calcStandardDeviation())

        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        viewDidLoad()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
