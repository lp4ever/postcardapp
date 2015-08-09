//
//  ViewController.swift
//  Postcard
//
//  Created by Adrian Lodge on 6/21/15.
//  Copyright (c) 2015 Supatone Innovation. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var msgLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var enterName: UITextField!
    
    @IBOutlet weak var enterMessage: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailPressed(sender: AnyObject) {
        msgLabel.hidden = false
        msgLabel.text = enterMessage.text
        msgLabel.textColor = UIColor.blueColor()
        nameLabel.hidden = false
        nameLabel.text = "Sent by " + enterName.text
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        enterMessage.text = ""
        enterMessage.resignFirstResponder()
        enterName.text = ""
        enterName.resignFirstResponder()
    }

}

