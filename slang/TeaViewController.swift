//
//  TeaViewController.swift
//  slang
//
//  Created by Swechha on 8/2/18.
//  Copyright © 2018 Swechha. All rights reserved.
//

import UIKit
import AVFoundation

class TeaViewController: UIViewController {

    @IBOutlet var GifView: UIImageView!
    var teaSound: AVAudioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        GifView.loadGif(name: "spill")
        let soundFile = Bundle.main.path(forResource: "Tea", ofType:"m4a")
        
        
        do {
            
            try  teaSound = AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundFile!))
        }
        catch {
            print(error)
        }    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    
    @IBAction func touch(_ sender: Any) {
        teaSound.play()
        
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
