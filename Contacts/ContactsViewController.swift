//
//  ViewController.swift
//  Contacts
//
//  Created by Nisal Perera on 2015-10-05.
//  Copyright © 2015 Nisal Perera. All rights reserved.
//

import UIKit

class ContactsViewController: UIViewController, EditContactDelegate {
    
    var contacts = Array<Contact>()

    override func viewDidLoad() { // get calls once , anything you need to do one goes here
        super.viewDidLoad()
        
        var alice = Contact(name:"Alice")
        alice.age = 30
        alice.address = "123 Mulberry Lane\nMiddle of Nowhere"
        alice.gender = .Female
        alice.phoneNumber = "555-555-1234"
        contacts.append(alice)
        
        var bob = Contact(name:"Bob")
        bob.age = 30
        bob.address = "123 Mulberry Lane\nMiddle of Nowhere"
        bob.gender = .Male
        bob.phoneNumber = "555-555-1234"
        contacts.append(bob)
        
        var charles = Contact(name:"Charles")
        charles.age = 30
        charles.address = "123 Mulberry Lane\nMiddle of Nowhere"
        charles.gender = .Female
        charles.phoneNumber = "555-555-1234"
        contacts.append(charles)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        print("seque:  \(segue.identifier)")
        
        // we pass information to the other view here
        if let next = segue.destinationViewController as? ContactViewController {
            if segue.identifier == "aliceSegue"{
                next.contact = contacts[0]
            }
            else if segue.identifier == "bobSegue"{
                next.contact = contacts[1]
            }
            else if segue.identifier == "charlesSegue" {
                next.contact = contacts[2]
            }
            else {
                print("Whoops! Dont know segue \(segue.identifier)")
            }
            
        }
        
        // segue to edit view contact
        else if let next = segue.destinationViewController as? UINavigationController {
            if let top = next.topViewController as? EditContactViewController {
                top.delegate = self
            }
        }
        
    }
    
    func contactCancelled() {
        dismissViewControllerAnimated(true) {
        }
    }
    
    func contactSaved(contact: Contact) {
        dismissViewControllerAnimated(true) {
            self.contacts.append(contact)
            let button = UIButton(type: UIButtonType.Custom)
            button.setTitle(contact.name, forState: .Normal)
            button.setTitleColor(UIColor.blueColor(), forState: .Normal)
            button.frame = CGRect(x: 44.0, y: 64.0, width: 100.0, height: 44.0)
            self.view.addSubview(button)
        }
    }
    

}

