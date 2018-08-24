//
//  ContactViewController.swift
//  tag-caller
//
//  Created by Ion Iascerinschi on 8/23/18.
//  Copyright © 2018 Ion Iascerinschi. All rights reserved.
//

import UIKit

class ContactVC: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    var index:Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = ContactManager.shared.arrayContact[index!].name
        numberLabel.text = ContactManager.shared.arrayContact[index!].number
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
