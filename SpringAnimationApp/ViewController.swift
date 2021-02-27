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
        springAnimationView.layer.cornerRadius = 5
        runButton.layer.cornerRadius = 2
    }

    @IBAction func runButton(_ sender: Any) {
        springAnimationView.animation = "zoomIn"
        springAnimationView.curve = "easeIn"
        springAnimationView.force = 2
        springAnimationView.duration = 3
        springAnimationView.delay = 0.5
        springAnimationView.animate()
    }
    
}

