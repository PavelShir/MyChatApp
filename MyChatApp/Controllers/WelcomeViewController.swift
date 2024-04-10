//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import CLTypingLabel

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: CLTypingLabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = K.appName
       
    }
    
    @IBAction func registerButton(_ sender: UIButton) {
       
    }
    
    @IBAction func logInButton(_ sender: UIButton) {
       
    }
    
   
    
    func titleAnimation() {
        titleLabel.text = ""
        titleLabel.font = .boldSystemFont(ofSize: 50)
        var charIndex = 0.0
        let titleText = K.appName
        for letter in titleText {
            Timer.scheduledTimer(withTimeInterval: 0.1 * charIndex, repeats: false) { (timer) in
                self.titleLabel.text?.append(letter)
            }
            charIndex += 1
        }
    }

}
