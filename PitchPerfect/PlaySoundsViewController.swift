//
//  PlaySoundsViewController.swift
//  PitchPerfect
//
//  Created by ED on 4/23/15.
//  Copyright (c) 2015 SwiftBeard. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {
    
    var audioPlayer:AVAudioPlayer!

    @IBOutlet weak var StopPlaying: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        if var filePath = NSBundle.mainBundle().pathForResource("movie_quote", ofType: "mp3") {
            var filePathUrl = NSURL.fileURLWithPath(filePath)
            audioPlayer = AVAudioPlayer(contentsOfURL: filePathUrl, error: nil)
            audioPlayer.enableRate = true
            
        }else{
            println("Unable to get audio file")
        }

        // Do any additional setup after loading the view.
    }
    
    @IBAction func playSoundSlowly(sender: UIButton)
    {
        audioPlayer.stop()
        audioPlayer.rate = 0.5
        audioPlayer.currentTime = 0.0
        audioPlayer.play()
        StopPlaying.hidden = false
        
    }

    @IBAction func playSoundfast(sender: UIButton)
    {
        audioPlayer.stop()
        audioPlayer.rate = 1.5
        audioPlayer.currentTime = 0.0
        audioPlayer.play()
        StopPlaying.hidden = false
        
    }
    
    @IBAction func StopPlaying(sender: UIButton)
    {
        audioPlayer.stop()
        StopPlaying.hidden = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


   
}
