//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{

    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    func playSound(sid : Int) {
        let path = Bundle.main.path(forResource: "note\(sid).wav", ofType: nil)!
        let url = URL(fileURLWithPath: path)
        
        
        do {
        player = try AVAudioPlayer(contentsOf: url)
        player?.play()
        } catch {
        print("Wua Wuua Wuuuuuaaaaaa")
        }
    }

    @IBAction func notePressed(_ sender: UIButton) {
        playSound(sid: sender.tag)
    }
    
}

