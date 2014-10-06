//
//  ViewController.swift
//  PostCard
//
//  Created by jordan on 04/10/2014.
//  Copyright (c) 2014 jordan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {  

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var message: UILabel!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var messageField: UITextField!
    @IBOutlet weak var messageSentButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sendMessageButton() {
        //set the labels equal to the text in the testFields
        nameLabel.text = nameField.text
        message.text = messageField.text
        
        //if the name is jordan make the nameLabel color red
        if nameField.text == "jordan" {
            nameLabel.textColor = UIColor(red: 195/255.0, green: 128/255.0, blue: 128/255.0, alpha: 1.0)
        }
        
        //unhide the labels
        nameLabel.hidden = false
        message.hidden = false
        
        //set the text in the textFields to empty strings so that they show their placeholder values
        nameField.text = ""
        messageField.text = ""
        
        //change the title of the button
        messageSentButton.setTitle("Message sent", forState: .Normal)
        
        //after clicking away from the textFields the keyboard should disappear
        nameField.resignFirstResponder()
        messageField.resignFirstResponder()
    }
    

}

