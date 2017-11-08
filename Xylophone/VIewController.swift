//
//  ViewController.swift
//  Xylophone
//
//  Created by Frank Wang on 27/01/2017.
//  Copyright © 2017 Lemma Studios. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
        var url = Bundle.main.url(forResource: "note\(sender.tag)",withExtension:"wav")!
        do{
            player = try AVAudioPlayer(contentsOf: url)
            guard let player = player else{ return }
            
            player.prepareToPlay()
            player.play()
        }catch let error as Error{
            print(error.localizedDescription)
        }
    }
    
  

}

