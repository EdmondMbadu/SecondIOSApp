//
//  NewViewController.swift
//  SecondIOSApp
//
//  Created by Mbadu, Edmond Ngoma on 10/29/19.
//  Copyright © 2019 Mbadu, Edmond Ngoma. All rights reserved.
//

import UIKit

class NewViewController: UIViewController {

    // Gives NewViewController access to the label
    @IBOutlet weak var tipLabel: UILabel!
    
    // Create a String that will stroe the calculated tip sent from the
    // original ViewController
    
    var tipToShow = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // display the calculated tip sent from the original ViewController
        // in the label
        tipLabel.text = tipToShow;
        
        
    }
    
    
    @IBAction func goToTableView(_ sender: UIButton) {
        
              // segue to the New View COntroller
              // this method requires the prepate method be overidden
              performSegue(withIdentifier: "GoToTableView", sender: nil)
    }
    
    
       // This method creates an instance of the View Controller that's being
       // segued to
       override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           
           // if we're segueeing to the View Controller that has the identifier
           // GodToTableView
           if segue.identifier == "GoToTableView" {
               
               // create an instance of that View Controller
               // checking if teh sequte destination is castqable to a NewTableController
               // and cast it if it is, else return nil
             _ = segue.destination as? NewTableViewController
               // set the instance's tipToHosw property equal to the calculated tip
             
           }
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
