//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func cKeyPressed(_ sender: UIButton) {
        playSound(soundName: "C")
    }
    
    @IBAction func dKeyPressed(_ sender: UIButton) {
        playSound(soundName: "D")
    }
    
    @IBAction func eKeyPressed(_ sender: UIButton) {
        playSound(soundName: "E")
    }
    
    @IBAction func fKeyPressed(_ sender: UIButton) {
        playSound(soundName: "F")
    }
    
    @IBAction func gKeyPressed(_ sender: UIButton) {
        playSound(soundName: "G")
    }
    
    @IBAction func aSoundPressed(_ sender: UIButton) {
        playSound(soundName: "A")
    }
    

    @IBAction func bKeyPressed(_ sender: UIButton) {
        playSound(soundName: "B")
    }
    
    func playSound(soundName: String) {
        guard let url = Bundle.main.url(forResource: soundName, withExtension: "wav") else { return }

        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)

            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)

            guard let player = player else { return }

            player.play()

        } catch let error {
            print(error.localizedDescription)
        }
    }
}

