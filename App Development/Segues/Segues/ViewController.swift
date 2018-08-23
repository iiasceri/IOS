//
//  ViewController.swift
//  Segues
//
//  Created by Ion Iascerinschi on 8/22/18.
//  Copyright © 2018 Ion Iascerinschi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var inputField: UITextField!
    
    @IBAction func buttonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "goToSecondScreen", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecondScreen" {
            
            let destinationVC = segue.destination as! SecondViewController
            
            destinationVC.textPassedOver = inputField.text!
            
            
        }
    }
}

