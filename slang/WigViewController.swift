//
//  WigViewController.swift
//  slang
//
//  Created by Swechha on 8/2/18.
//  Copyright © 2018 Swechha. All rights reserved.
//

import UIKit
import AVFoundation

class WigViewController: UIViewController {

    @IBOutlet var GifView: UIImageView!
    var wigSound: AVAudioPlayer = AVAudioPlayer()
    override func viewDidLoad() {
        super.viewDidLoad()
           GifView.loadGif(name: "wigok")
        let soundFile = Bundle.main.path(forResource: "Wig", ofType:"m4a")
        
        
        do {
            
            try  wigSound = AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundFile!))
        }
        catch {
            print(error)
        }
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
 
    @IBAction func touch(_ sender: Any) {
         wigSound.play()
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
