//
//  ViewController.swift
//  CardGame
//
//  Created by Rohit Sharma on 24/08/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    
    @IBOutlet weak var player1Score: UILabel!
    
    
    @IBOutlet weak var player2Score: UILabel!
    
    var player1 = 0
    var player2 = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onClickDeal(_ sender: Any) {
        
        let leftnum = Int.random(in: 3...10)
        let rightnum = Int.random(in: 3...10)
        
        leftImageView.image = UIImage(named: "card\(leftnum)")
        
        rightImageView.image = UIImage(named: "card\(rightnum)")
        
        if leftnum > rightnum {
            player1 += 1
            
            player1Score.text = String(player1)
        }
        else if rightnum > leftnum {
            player2 += 1
            
            player2Score.text = String(player2)
        }
        else{
            
        }
        
        
    }
    
}

