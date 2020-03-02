//
//  SplashscreenViewController.swift
//  Movies
//
//  Created by Emil on 02/03/2020.
//  Copyright © 2020 student5310. All rights reserved.
//

import UIKit
import Lottie

class SplashscreenViewController: UIViewController {
    
    @IBOutlet weak var animationView: AnimationView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let starAnimation = Animation.named("animation")
        animationView.animation = starAnimation
        animationView.loopMode = LottieLoopMode.repeat(4)
        animationView.play { (finished) in
            let vc = ViewController()
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: false)
        }
    }

}
