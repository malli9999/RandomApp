//
//  SecondViewController.swift
//  RandomApp
//
//  Created by Student on 2/27/19.
//  Copyright © 2019 Student. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let guess = Guesser.shared
        return guess.numGuesses()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let guess = Guesser.shared
        let cell = tableView.dequeueReusableCell(withIdentifier: "guess")!
        cell.textLabel?.text = "Correct Answer: \(guess.guess(index:indexPath.row).correctAnswer)"
        cell.detailTextLabel?.text = "#Attempst: \(guess.guess(index: indexPath.row).numAttemptsRequired)"
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBOutlet weak var tableShow: UITableView!
    override func viewDidAppear(_ animated: Bool) {
        self.tableShow.reloadData()
    }
    

}

