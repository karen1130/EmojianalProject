//
//  ViewController.swift
//  Emojianal Project
//
//  Created by Apple on 7/26/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    
        let emojis = ["🤡" : "you clownin", "🧟‍♀️" : "you dead" ]
    var customMessages = ["you clownin" : ["Oh, did you get left on read? relatable", "you clownin", "you aint a clown. you the entire circus"],
                    "you dead" : ["feeling dead inside? same.", "are you ms. kesha? cuz you frickin dead", "Sorry boo but you looking dead on the outside too"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //"Oh, did you get left on read? relatable"
//"feeling dead inside? same."


        // Do any additional setup after loading the view.
    }

    @IBAction func showMessage(sender: UIButton) {
        
        
        
        let number = Int.random(in: 0 ... 2)
        let selectedEmotion = sender.titleLabel?.text
        
        // in as much detail as possible
        // pseudo-code the things that need to happen
        // when a user clicks an emoji button
        
         let emojiMessage = customMessages[emojis[selectedEmotion!]!]?[number]
        
        let alertController = UIAlertController(title: "It be like that sometimes", message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
        
        
    }
    

    
}

