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
        name.text = username.text
        letterMessage.text = message.text
        name.textColor = UIColor(red: 180/255.0, green: 220/255.0, blue: 240/255.0, alpha: 1.0)
        letterMessage.textColor = UIColor(red: 180/255.0, green: 220/255.0, blue: 240/255.0, alpha: 1.0)
        name.hidden = false
        letterMessage.hidden = false
        username.text = ""
        message.text = ""
        username.resignFirstResponder()
        message.resignFirstResponder()
        
    }

}

