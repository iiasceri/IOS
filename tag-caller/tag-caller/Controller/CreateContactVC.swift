//
//  CreateContactViewController.swift
//  tag-caller
//
//  Created by Ion Iascerinschi on 8/23/18.
//  Copyright © 2018 Ion Iascerinschi. All rights reserved.
//

import UIKit

class CreateContactVC: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var numberField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func saveButton(_ sender: Any) {
        ContactManager.shared.createContact(name: nameField.text!, number: numberField.text!)
//        self.dismiss(animated: true, completion: nil)
        if nameField.text == "" || numberField.text == "" {
            let alert = UIAlertController(title: "fghdf", message: "ytuityu", preferredStyle: .alert)
            let ok = UIAlertAction(title: "hh", style: .destructive, handler: nil)
            alert.addAction(ok)
            self.present(alert, animated: true, completion: nil)
        }
        else
        {
            self.navigationController?.popViewController(animated: true)
        }

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
