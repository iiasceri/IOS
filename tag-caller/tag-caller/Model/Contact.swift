//
//  Contact.swift
//  tag-caller
//
//  Created by Ion Iascerinschi on 8/23/18.
//  Copyright © 2018 Ion Iascerinschi. All rights reserved.
//

import Foundation

class Contact {
    var name : String
    var number : String
    
    init (name:String, number:String) {
        self.name = name
        self.number = number
    }
    
    init () {
        name = ""
        number = ""
    }
}
