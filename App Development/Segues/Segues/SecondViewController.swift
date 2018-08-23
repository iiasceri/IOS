//
//  SecondViewController.swift
//  Segues
//
//  Created by Ion Iascerinschi on 8/22/18.
//  Copyright © 2018 Ion Iascerinschi. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var textPassedOver : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        outputLabel.text = textPassedOver
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBOutlet weak var outputLabel: UILabel!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
