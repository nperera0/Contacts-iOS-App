//
//  ContactViewController.swift
//  Contacts
//
//  Created by Nisal Perera on 2015-10-05.
//  Copyright © 2015 Nisal Perera. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController {
    
    @IBOutlet var nameLabel:UILabel!
    @IBOutlet var ageLabel:UILabel!
    @IBOutlet var genderLabel:UILabel!
    @IBOutlet var phoneNumberLabel:UILabel!
    @IBOutlet var addressLabel:UILabel!
    
    var contact:Contact?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    
        guard let person = self.contact else {
            return
        }
        
        nameLabel.text = person.name
        ageLabel.text = "Age: \(person.age)"
        
        if person.gender == .Male { // .Male same as Gender.Male
            genderLabel.text = "M"
        }
        else {
            genderLabel.text = "F"
        }
        
        
        
    
    }

   

}
