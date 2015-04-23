//
//  ViewController.swift
//  PitchPerfect
//
//  Created by ED on 4/23/15.
//  Copyright (c) 2015 SwiftBeard. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingInProgress: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(sender: UIButton)
    {
        //Show text "recording in progress"
        recordingInProgress.hidden = false
        
        //TODO: record the user's voice'
        println("in Audio")
        
    }

}

