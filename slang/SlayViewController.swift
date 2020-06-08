//
//  SlayViewController.swift
//  slang
//
//  Created by Swechha on 8/2/18.
//  Copyright © 2018 Swechha. All rights reserved.
//

import UIKit
import AVFoundation

class SlayViewController: UIViewController {
   var slaySound: AVAudioPlayer = AVAudioPlayer()
    
    @IBOutlet var GifView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        GifView.loadGif(name: "giphy")
        
        let soundFile = Bundle.main.path(forResource: "Slay", ofType:"m4a")
        
        
        do {
            
            try  slaySound = AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundFile!))
        }
        catch {
            print(error)
        }
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
      
    }
    
    @IBAction func touch(_ sender: Any) {
        slaySound.play()
    }
    
  
    
 

}
