//
//  ReadViewController.swift
//  slang
//
//  Created by Swechha on 8/2/18.
//  Copyright © 2018 Swechha. All rights reserved.
//

import UIKit
import AVFoundation

class ReadViewController: UIViewController {

    @IBOutlet var GifView: UIImageView!
    
    var readSound: AVAudioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        GifView.loadGif(name: "readgif")

        
        let soundFile = Bundle.main.path(forResource: "Read", ofType:"m4a")
        
        
        do {
            
            try  readSound = AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundFile!))
        }
        catch {
            print(error)
        }
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    
    @IBAction func touch(_ sender: Any) {
        readSound.play()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
