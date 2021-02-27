//
//  ViewController.swift
//  SpringAnimationApp
//
//  Created by o11ev on 27.02.2021.
//

import Spring

class ViewController: UIViewController {
    
    let animationData = AnimationData()
    
    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var runButton: UIButton!
    @IBOutlet var animationInfoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        springAnimationView.layer.cornerRadius = 10
        runButton.layer.cornerRadius = 3
        animationData.setRandom()
    }
    
    @IBAction func runButton(_ sender: Any) {
        springAnimationView.animation = animationData.preset
        springAnimationView.curve = animationData.curve
        springAnimationView.force = animationData.force
        springAnimationView.duration = animationData.duration
        springAnimationView.delay = animationData.delay
        
        animationInfoLabel.text = animationData.getParametersAsString()
        
        animationData.setRandom()
        
        runButton.setTitle("Run \(animationData.preset)", for: .normal)
        
        springAnimationView.animate()
        
    }
}
