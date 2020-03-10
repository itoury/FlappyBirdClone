//
//  SoundPlayer.swift
//  FlappyBird
//
//  Created by 伊藤龍哉 on 2020/03/10.
//  Copyright © 2020 ryuuya.itou. All rights reserved.
//

import AVFoundation

final class SoundPlayer {
    private init() {}
    static let shared = SoundPlayer()
    
    private var audioPlayer: AVAudioPlayer?
    
    func playSound(name: String) {
        let soundURL = Bundle.main.url(forResource: name, withExtension: "mp3")
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
            audioPlayer!.play()
        } catch {
           print("sound error")
        }
    }
    
}
