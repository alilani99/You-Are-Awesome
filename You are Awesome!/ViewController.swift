//
//  ViewController.swift
//  You are Awesome!
//
//  Created by Aidan on 6/2/19.
//  Copyright © 2019 Aidan Lilani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    //Code below executes when the app first loads
    
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
    }
    @IBAction func showMessagePressed(_ sender: UIButton) {
        
        let message1 = "You Are Awesome!"
        let message2 = "You Are Great!"
        let message3 = "You Are Fantastic!"
        let message4 = "Genius"
        let message5 = "GOAT"
        let message6 = "You're the Realest"
        let message7 = "You Are #1"
        let message8 = "Good Job Larry!"
        let message9 = "oh noce"
        let message10 = "How can I slip if I'm the one doing the moppin?"
        
        let messages = [message1,message2,message3,message4,message5,message6,message7,message8,message9,message10]
        
        messageLabel.text = messages[index]
        if index == messages.count - 1 {
            index = 0
        } else {
            index += 1
            
        }
        
        
        
        
//        let message1 = "You Are Awesome!"
//        let message2 = "You Are Great!"
//        let message3 = "You Are Amazing!"
//
//        if messageLabel.text == message1 {
//            messageLabel.text = message2
//        } else if messageLabel.text == message2 {
//            messageLabel.text = message3
//        } else {
//            messageLabel.text = message1
//        }
    }
    
    
    
}

