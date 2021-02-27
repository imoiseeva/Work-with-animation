//
//  Model.swift
//  Work with animation
//
//  Created by Irina Moiseeva on 26.02.2021.
//
//
//struct ModelForButton {
//
//    let nameOfAnimation: String
//}

import UIKit

struct Button {
    var lableOfButton: [String]
    let view: ViewWithParametres
}

struct ViewWithParametres {
    let repeatIt: Int
    let duration: Int
}

extension Button {
    static func getAnimation() -> Button {
        
        let nameOfAnimation = ["shake",
                               "pop",
                               "morph",
                               "squeeze",
                               "wobble",
                               "swing",
                               "flipX",
                               "flipY",
                               "fall",
                               "squeezeLeft",
                               "squeezeRight",
                               "squeezeDown",
                               "squeezeUp",
                               "slideLeft",
                               "slideRight",
                               "slideDown",
                               "slideUp",
                               "fadeIn",
                               "fadeOut",
                               "fadeInLeft",
                               "fadeInRight",
                               "fadeInDown",
                               "fadeInUp",
                               "zoomIn",
                               "zoomOut",
                               "flash"]
        
        return Button(lableOfButton: nameOfAnimation, view: ViewWithParametres(repeatIt: 2, duration: Int(0.6)))
    }
}
