//
//  ViewController.swift
//  SecondIOSApp
//
//  Created by Mbadu, Edmond Ngoma on 10/24/19.
//  Copyright © 2019 Mbadu, Edmond Ngoma. All rights reserved.
//

import UIKit

// this class is an equivalent of the MainActivity Java class in android

class ViewController: UIViewController {
    
    // It gives ViewController access to the ImageView
    @IBOutlet weak var monsterImageView: UIImageView!
    
    // create an array of strings that contains the names of the different monsters
    var monsters = ["Astro", "Fluffy","Munchie","Squido"]
    
    // IBOutlets are created as optionals
    // this means that they may contain a value or they may be nil (null for java)
    @IBOutlet weak var amountTextField: UITextField!
    
    @IBOutlet weak var tipPercentTextField: UITextField!
    
    @IBOutlet weak var tipLabel: UILabel!
    
    // equivalent of the onCreate method in Java Android classes
    //called when the scene that it controls is
    // accessed
    
    // intialization work is done in this method

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // creating an instance of a Joke
        let joke = Jokes()
        
        // iterating through the jokes array
        for joke in joke.jokes{
            // printing out the hokes to the debug area
            print(joke)
        }
        
    }
    
    
    // Gives VewController the ability to respond to the selection
    // in the segmented Control
    @IBAction func changeMonster(_ sender: UISegmentedControl) {
        
        // change the image in the ImageView based on the segment selected
        
        // get the index of the selcted segment (0, 1 , 2, 3)
        let index = sender.selectedSegmentIndex
        
        // set the image of the IMageView to a new UIImage
        // the new UIImage is the element in the monsters array that matches the index
        monsterImageView.image = UIImage(named: monsters[index])
    }
    
    // Give VewController the ability to respond to the Button being pushed
    
    @IBAction func calculateTip(_ sender: UIButton) {
        
        var dTip = 0.0
        var dAmount = 0.0
        var dPercent = 0.0
        
        
        // get the value in the TextFields, if a value
        // exists and assgin the values to constants
        // the TextFields are Optionals, so they could contain a value and they could also be nil
        if let amount = amountTextField.text, let percent =
            tipPercentTextField.text {
           
            // trim whitespae that may exist at the beginning
            // or the ending of the constants
            
            let trimmedAmount = amount.trimmingCharacters(in: .whitespaces)
            
            let trimmedPercent = percent.trimmingCharacters(in: .whitespaces)
      // check to make sure the trimmed constants are not constants
            
            if(!trimmedAmount.isEmpty && !trimmedPercent.isEmpty){
                
                // Convert trimmmed constants to Doubles
                dAmount = Double (trimmedAmount)!
                dPercent = Double (trimmedPercent)!
                // caculate the tip
                dTip = dAmount * dPercent
                
                
            }
        
        }
        
        // convert caculated tip to a string
        // displayed it in the label
        tipLabel.text = "Tip is $\(String(dTip))"
        
    }
    
}
