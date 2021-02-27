//
//  ViewController.swift
//  SpringAnimationApp
//
//  Created by o11ev on 27.02.2021.
//

import Spring

class ViewController: UIViewController {
    
    let blueViewAnimation = AnimationData()
    let yellowViewAnimation = AnimationData()
    
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
        runButton.layer.cornerRadius = 3
        
        blueViewAnimation.setRandom()
        yellowViewAnimation.setRandom()
    }
    
    @IBAction func runButton(_ sender: Any) {
        setSettingsforBlueView(view: blueSpringView)
        setSettingsforYellowView(view: yellowSpringView)

        infoLabel.text = blueViewAnimation.getParametersAsString()
        
        blueViewAnimation.setRandom()
        yellowViewAnimation.setRandom()
        
        runButton.setTitle("Run \(blueViewAnimation.preset)", for: .normal)
    
        blueSpringView.animate()
        yellowSpringView.animate()
    }
}

extension ViewController {
    func setSettingsforBlueView(view: SpringView!) {
        view.animation = blueViewAnimation.preset
        view.curve = blueViewAnimation.curve
        view.force = blueViewAnimation.force
        view.duration = blueViewAnimation.duration
        view.delay = blueViewAnimation.delay
    }
    
    func setSettingsforYellowView(view: SpringView!) {
        view.animation = yellowViewAnimation.preset
        view.curve = yellowViewAnimation.curve
        view.force = yellowViewAnimation.force
        view.duration = yellowViewAnimation.duration
        view.delay = yellowViewAnimation.delay
    }
}
