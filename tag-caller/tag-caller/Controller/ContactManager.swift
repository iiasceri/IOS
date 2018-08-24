//
//  CreateNewContact.swift
//  tag-caller
//
//  Created by Ion Iascerinschi on 8/23/18.
//  Copyright © 2018 Ion Iascerinschi. All rights reserved.
//

import Foundation

class ContactManager {
    
    static let shared = ContactManager()
    
    var arrayContact = Array<Contact>()
    
    func createContact(name: String, number: String) {
        let contact = Contact(name: name,number: number)
        arrayContact.append(contact)
    }
    
    func editContact(name: String, number: String) {
        
    }
    
    init () {
        
    }
    
}
