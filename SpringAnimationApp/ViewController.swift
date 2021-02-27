//
//  ViewController.swift
//  SpringAnimationApp
//
//  Created by o11ev on 27.02.2021.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var runButton: UIButton!
    @IBOutlet var animationInfoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        springAnimationView.layer.cornerRadius = 10
        runButton.layer.cornerRadius = 3
    }

    @IBAction func runButton(_ sender: Any) {
        springAnimationView.animation = "fadeInDown"
        springAnimationView.curve = "easeIn"
        springAnimationView.force = 1
        springAnimationView.duration = 2
        springAnimationView.delay = 0.5
        springAnimationView.animate()
        
        animationInfoLabel.text = springAnimationView.animation
    }
}
