//
//  ViewController.swift
//  Emojianal Project
//
//  Created by Apple on 7/26/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    
        let emojis = ["🤡" : "Oh, did you get left on read? relatable", "🧟‍♀️" : "feeling dead inside? same."]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        



        // Do any additional setup after loading the view.
    }

    @IBAction func showMessage(sender: UIButton) {
        
        let selectedEmotion = sender.titleLabel?.text
        
        // in as much detail as possible
        // pseudo-code the things that need to happen
        // when a user clicks an emoji button
        let alertController = UIAlertController(title: "you clownin", message: "\(emojis["🤡"]!)", preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
        
        
    }
    

    
}

