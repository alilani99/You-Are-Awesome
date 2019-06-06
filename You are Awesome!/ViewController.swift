//
//  ViewController.swift
//  You are Awesome!
//
//  Created by Aidan on 6/2/19.
//  Copyright © 2019 Aidan Lilani. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    //Code below executes when the app first loads
    
    var awesomePlayer = AVAudioPlayer()
    var soundName = "sound0"
    var index = -1
    var imageIndex = -1
    var soundIndex = -1
    
   
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
    }
    @IBOutlet weak var awesomeImageView: UIImageView!
    @IBAction func showMessagePressed(_ sender: UIButton) {
        let numberOfImages = 8
        let numberOfSounds = 4
        
        
        let message1 = "You Are Awesome!"
        let message2 = "You Are Great!"
        let message3 = "You Are Fantastic!"
        let message4 = "Genius"
        let message5 = "GOAT"
        let message6 = "You're the Realest"
        let message7 = "You Are #1"
        let message8 = "Good Job Aidan!"
        let message9 = "oh noce"
        let message10 = "How can I slip if I'm the one doing the moppin?"
        
        let messages = [message1,message2,message3,message4,message5,message6,message7,message8,message9,message10]
        
        var newIndex: Int
        
        repeat {
            newIndex = Int.random(in: 0..<messages.count)
        } while index == newIndex
        
        index = newIndex
        messageLabel.text = messages[index]
        
        repeat {
            newIndex = Int.random(in: 0..<numberOfImages)
        } while imageIndex == newIndex
        
        imageIndex = newIndex
        awesomeImageView.image = UIImage(named: "image\(imageIndex)")
        
        
        
        
        
        
        repeat {
            newIndex = Int.random(in: 0..<numberOfSounds)
        } while soundIndex == newIndex
        
        soundIndex = newIndex
        var soundName = "sound\(soundIndex)"
        
        

        
        if let sound = NSDataAsset(name: soundName) {
            //if reading NSDataAsset didn't work. A file name error is likeley
            
            do {
                try awesomePlayer = AVAudioPlayer(data: sound.data)
                awesomePlayer.play()
            } catch {
                print("ERROR: data in \(soundName) couldn't be played as a sound")
            }
        } else  {
            print("ERROR: file \(soundName) didn't load")
        }
        
        
        
    
    }
    
    
    
}

