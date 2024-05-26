//
//  ViewController.swift
//  VideoPlayerWithUIKit
//
//  Created by Lilit Avdalyan on 27.05.24.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        
        super.viewDidAppear(animated)
        playVideo()
        
    }
}

extension ViewController {
    
    private func playVideo() {
        
        guard let path = Bundle.main.path(forResource: "vie", ofType: "mp4") else {
            debugPrint("vie.mp4 file not found")
            return
        }
        
        var player = AVPlayer(url: URL(fileURLWithPath: path))
        var playerController = AVPlayerViewController()
        
        playerController.player = player
        present(playerController, animated: true) {
            player.play()
        }
    }
}

