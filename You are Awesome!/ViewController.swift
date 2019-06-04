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
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
    }
    @IBAction func showMessagePressed(_ sender: UIButton) {
        messageLabel.text = "You Are Awesome!"
       
    }
    
}

