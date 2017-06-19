//
//  ViewController.swift
//  Dice Roll
//
//  Created by Abhijith Sreekar Nalla on 19/6/17.
//  Copyright © 2017 asn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        //We’re referencing the label property which is connected to the label element on our storyboard.
        //Just like how we set its “text” property in the storyboard to “The sum is:”, we are programmatically setting it here.
//        label.text = "Hello Dice"
//        leftImageView.image = UIImage(named: "Dice6")
//        rightImageView.image = UIImage(named: "Dice6")
        
        let numberOne = arc4random_uniform(5) + 1 //generating a random number with the upper limit 5. So the number range will be from 0 to 5. But adding 1 makes it match our dice numbers that is 1-6
        let numberTwo = arc4random_uniform(5) + 1
        label.text = "The sum is: \(numberOne + numberTwo)"
        leftImageView.image = UIImage(named: "Dice\(numberOne)") //assigning the number with Dice string to match the dice image names we have.
        rightImageView.image = UIImage(named: "Dice\(numberTwo)")
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

