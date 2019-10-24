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


}
