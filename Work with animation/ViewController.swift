//
//  ViewController.swift
//  Work with animation
//
//  Created by Irina Moiseeva on 25.02.2021.
//

import Spring

class ViewController: UIViewController {
    
    var anim = Button.getAnimation()
    
    @IBOutlet weak var springView: SpringView!
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func buttonPresed(_ sender: SpringButton) {
        
        if let random = anim.lableOfButton.randomElement(){
            print(random)
        textLabel.text = random
        
        
        springView.animation = random
        springView.animate()

        sender.animate()
        }

    }
    
}

