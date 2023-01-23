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
        playSound()
    }
    
//MARK: Functions
    func playSound() {
        let sound = Bundle.main.url(forResource: "C", withExtension: "wav")
        audioPlayer = try! AVAudioPlayer(contentsOf: sound!)
        audioPlayer.play()
    }

}

