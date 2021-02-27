//
//  AnimationModel.swift
//  SpringAnimationApp
//
//  Created by o11ev on 27.02.2021.
//

import UIKit

class AnimationInfoUpd {
    var preset: String = ""
    var curve: String = ""
    var force: CGFloat = 0.0
    var duration: CGFloat = 0.0
    var delay: CGFloat = 0.0
    
    private func setRandomParameters() {
        self.preset = AnimationPreset.fadeOutIn.rawValue
        self.curve = AnimationCurve.easeInOut.rawValue
        self.force = CGFloat.random(in: 1..<3)
        self.duration = CGFloat.random(in: 1..<3)
        self.delay = CGFloat.random(in: 0..<2)
    }
    
    private func printParameters() -> String {
        var parameters = ""
        //parameters = "\(self.preset) + \(self.curve) + \(String(self.force))"
        return parameters
    }
    
}

enum AnimationPreset: String {
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

enum AnimationCurve: String {
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
