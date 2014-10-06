//
//  ViewController.swift
//  PostCard
//
//  Created by jordan on 04/10/2014.
//  Copyright (c) 2014 jordan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var message: UITextField!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var letterMessage: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func button() {
        //setting the labels equal to the users input
        name.text = username.text
        letterMessage.text = message.text
        
        //create a color and set the color of the text of both labels equal to it
        var color = UIColor(red: 180/255.0, green: 220/255.0, blue: 240/255.0, alpha: 1.0)
        name.textColor = color
        letterMessage.textColor = color
        
        //these two lines of code change the labels hidden value from true to false thereby displaying them.
        name.hidden = false
        letterMessage.hidden = false
        
        //replaces the text the user typed with an empty string and therefore the placeholder returns.
        username.text = ""
        message.text = ""
        
        //after clicking out of each textfield the keyboard will disappear.
        username.resignFirstResponder()
        message.resignFirstResponder()
        
    }

}

