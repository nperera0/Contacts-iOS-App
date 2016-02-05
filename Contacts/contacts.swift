//
//  contacts.swift
//  Contacts
//
//  Created by Nisal Perera on 2015-10-05.
//  Copyright © 2015 Nisal Perera. All rights reserved.
//

import Foundation

enum Gender{
    case Male
    case Female
}

class Contact{
    var name: String
    var age: Int? // ? means optional
    var address:String?
    var gender:Gender?
    var phoneNumber:String?
    
    init (name:String){
        self.name = name
    }
}
