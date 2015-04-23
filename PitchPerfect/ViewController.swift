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
    @IBOutlet weak var stopRecord: UIButton!
    @IBOutlet weak var recordButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        stopRecord.hidden = true
        recordButton.enabled = true
    }

    @IBAction func recordAudio(sender: UIButton)
    {
        //Show text "recording in progress"
        recordingInProgress.hidden = false
        stopRecord.hidden = false
        recordButton.enabled = false
        
        //TODO: record the user's voice'
        println("in Audio")
        
    }

    @IBAction func stopRecording(sender: UIButton)
    {
        recordingInProgress.hidden = true;
        recordButton.enabled = true
        
    }
}

