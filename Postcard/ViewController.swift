//
//  ViewController.swift
//  Postcard
//
//  Created by Local Admin on 12/4/14.
//  Copyright (c) 2014 Dino Libertino. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessaggeTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.hidden = false
        messageLabel.text = enterMessaggeTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        //Comment per Github
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        
        enterNameTextField.resignFirstResponder()
        enterNameTextField.text = ""
        
        enterMessaggeTextField.resignFirstResponder()
        enterMessaggeTextField.text = ""
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
        
    }

}

