//
//  ViewController.swift
//  Xylophone
//
//  Created by Марк Райтман on 23.01.2023.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    //MARK: Properties
    var audioPlayer = AVAudioPlayer()
    
    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: Buttons
    @IBAction func keyPessed(_ sender: UIButton) {
        playSound(soundName: sender.currentTitle!)
        sender.alpha = 0.5
        
        print("Start")
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.alpha = 1
            print("End")
        }
    }
    
    //MARK: Functions
    func playSound(soundName: String) {
        let sound = Bundle.main.url(forResource: soundName, withExtension: "wav")
        audioPlayer = try! AVAudioPlayer(contentsOf: sound!)
        audioPlayer.play()
    }
    
}

