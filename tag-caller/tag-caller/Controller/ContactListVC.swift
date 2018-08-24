//
//  FirstViewController.swift
//  tag-caller
//
//  Created by Ion Iascerinschi on 8/23/18.
//  Copyright © 2018 Ion Iascerinschi. All rights reserved.
//

import UIKit

class Cell:UITableViewCell
{
    @IBOutlet weak var label: UILabel!
}

class ContactListVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
       @IBOutlet weak var tableVi: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.title = "Contact List"
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableVi.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ContactManager.shared.arrayContact.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! Cell
        cell.label.text = ContactManager.shared.arrayContact[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ContactVC") as! ContactVC
        vc.index = indexPath.row
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

