//
//  ViewController.swift
//  Roll Dice
//
//  Created by Максим Беседин on 07.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelSum: UILabel!
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
                rollDice()
    }

    @IBAction func rollACTION(_ sender: UIButton) {
           rollDice()
    }
    
    func rollDice(){

           let numberOne = arc4random_uniform(6) + 1
           let numberTwo = arc4random_uniform(6) + 1
           labelSum.text = "The sum is: \(numberOne + numberTwo)"
//
//        "The first dice is \(numberOne)"
           leftImageView.image = UIImage(named: "dice \(numberOne)")
           rightImageView.image = UIImage(named: "dice \(numberTwo)")
       }
}

