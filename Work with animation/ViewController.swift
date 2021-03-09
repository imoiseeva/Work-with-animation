//
//  ViewController.swift
//  Work with animation
//
//  Created by Irina Moiseeva on 25.02.2021.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet weak var springView: SpringView!
    @IBOutlet weak var textLabel: UILabel!
    
    var anim = Button.getAnimation()
    var currentAnimation = "shake"
    
    @IBAction func buttonPresed(_ sender: SpringButton) {
        
        springView.animation = currentAnimation
        springView.animate()
        
        textLabel.text = "Animation: \(currentAnimation) \nDuration: \(anim.view.duration) \nRepeat: \(anim.view.repeatIt)"
        
        randomAnimation()
        
        sender.setTitle(currentAnimation, for: .normal)
        sender.animation = currentAnimation
        if sender.animation == "squeezeDown" {
            sender.animation = "shake"
        }
        sender.animate()
    }
    
    private func randomAnimation() {
        if let nextAnim = anim.lableOfButton.randomElement(){
            currentAnimation = nextAnim
        }
        
    }
    
}

