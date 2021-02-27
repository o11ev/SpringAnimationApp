//
//  AnimationModel.swift
//  SpringAnimationApp
//
//  Created by o11ev on 27.02.2021.
//

import Foundation

class AnimationData {
    var preset: String = ""
    var curve: String = ""
    var force: Float = 0.0
    var duration: Float = 0.0
    var delay: Float = 0.0
    
    func setRandom() {
        self.preset = AnimationPreset.allCases.randomElement()!.rawValue
        self.curve = AnimationCurve.allCases.randomElement()!.rawValue
        self.force = Float.random(in: 1...3)
        self.duration = Float.random(in: 0.5...2)
        self.delay = Float.random(in: 0...0.5)
    }
    
    func getParametersAsString() -> String {
        """
        Blue view settings:
        preset — \(self.preset)
        curve — \(self.curve)
        force — \(String(format: "%.2f", self.force))
        duration — \(String(format: "%.2f", self.duration))
        var delay — \(String(format: "%.2f", self.delay))
        """
    }
}

enum AnimationPreset: String, CaseIterable {
    case slideLeft
    case slideRight
    case slideDown
    case slideUp
    case squeezeLeft
    case squeezeRight
    case squeezeDown
    case squeezeUp
    case fadeIn
    case fadeOut
    case fadeOutIn
    case fadeInLeft
    case fadeInRight
    case fadeInDown
    case fadeInUp
    case zoomIn
    case zoomOut
    case fall
    case shake
    case pop
    case flipX
    case flipY
    case morph
    case squeeze
    case flash
    case wobble
    case swing
}

enum AnimationCurve: String, CaseIterable {
    case easeIn
    case easeOut
    case easeInOut
    case linear
    case spring
    case easeInSine
    case easeOutSine
    case easeInOutSine
    case easeInQuad
    case easeOutQuad
    case easeInOutQuad
    case easeInCubic
    case easeOutCubic
    case easeInOutCubic
    case easeInQuart
    case easeOutQuart
    case easeInOutQuart
    case easeInQuint
    case easeOutQuint
    case easeInOutQuint
    case easeInExpo
    case easeOutExpo
    case easeInOutExpo
    case easeInCirc
    case easeOutCirc
    case easeInOutCirc
    case easeInBack
    case easeOutBack
    case easeInOutBack
}
