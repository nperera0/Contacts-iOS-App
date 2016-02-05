//
//  EditContactViewController.swift
//  Contacts
//
//  Created by Nisal Perera on 2015-10-05.
//  Copyright © 2015 Nisal Perera. All rights reserved.
//

import UIKit

protocol EditContactDelegate {
    func contactSaved (contact:Contact)
    func contactCancelled ()
}

class EditContactViewController: UIViewController {
    
    @IBOutlet var nameField:UITextField!
    @IBOutlet var phoneNumberField:UITextField!
    
    var delegate: EditContactDelegate?
    
    @IBAction func save (){
        let contact = Contact(name: nameField.text!)
        contact.phoneNumber = phoneNumberField.text
        
        delegate?.contactSaved(contact)
    }
    
    @IBAction func cancel (){
            delegate?.contactCancelled()
    }
}
