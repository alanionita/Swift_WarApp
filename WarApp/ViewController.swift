//
//  ViewController.swift
//  WarApp
//
//  Created by Alan Ionita on 29/01/2018.
//  Copyright © 2018 Alan Ionita. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0;
    var rightScore = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func dealTapped(_ sender: Any) {
        // randomise two numbers
        let leftRandomNumber = arc4random_uniform(13) + 2;
        let rightRandomNumber = arc4random_uniform(13) + 2;
        
        // change the image views
        leftImageView.image = UIImage(named: "card\(leftRandomNumber)")
        rightImageView.image = UIImage(named: "card\(rightRandomNumber)")
        
        // compare the two numbers
        if leftRandomNumber > rightRandomNumber {
            // Update score
            leftScore += 1
            
            // Update label
            leftScoreLabel.text = String(leftScore)
        }
        
        else if rightRandomNumber > leftRandomNumber {
            // Update score
            rightScore += 1
            
            // Update label
            rightScoreLabel.text = String(rightScore)
        }
        
        else if leftRandomNumber == rightRandomNumber {
            
        }
        
    }
    
    
}

