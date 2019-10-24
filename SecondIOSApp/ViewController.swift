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
}
