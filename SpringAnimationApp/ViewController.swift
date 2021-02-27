//
//  ViewController.swift
//  SpringAnimationApp
//
//  Created by o11ev on 27.02.2021.
//

import Spring

class ViewController: UIViewController {
    
    let animationData = AnimationData()
    
    @IBOutlet var blueSpringView: SpringView!
    @IBOutlet var yellowSpringView: SpringView!
    @IBOutlet var runButton: UIButton!
    @IBOutlet var infoLabel: UILabel!
    
    override func viewDidLayoutSubviews() {
        yellowSpringView.layer.cornerRadius = yellowSpringView.frame.size.width / 2
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        blueSpringView.layer.cornerRadius = 10
        yellowSpringView.layer.cornerRadius = 5
        runButton.layer.cornerRadius = 3
        animationData.setRandom()
    }
    
    @IBAction func runButton(_ sender: Any) {
        setSettingsforView(view: blueSpringView)
        setSettingsforView(view: yellowSpringView)

        infoLabel.text = animationData.getParametersAsString()
        
        animationData.setRandom()
        runButton.setTitle("Run \(animationData.preset)", for: .normal)
    
        blueSpringView.animate()
        yellowSpringView.animate()
        
    }
}

extension ViewController {
    func setSettingsforView(view: SpringView!) {
        view.animation = animationData.preset
        view.curve = animationData.curve
        view.force = animationData.force
        view.duration = animationData.duration
        view.delay = animationData.delay
    }
}
