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

        titleLabel.text = "⚡️FlashChat"
       
    }
    
    @IBAction func registerButton(_ sender: UIButton) {
       // performSegue(withIdentifier: "GoToRegister", sender: self)
    }
    
    @IBAction func logInButton(_ sender: UIButton) {
       // performSegue(withIdentifier: "GoToLogin", sender: self)
    }
    
    /*
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GoToRegister" {
            guard let resultVC = segue.destination as? RegisterViewController else { return }
        } else {
            guard let resultVC = segue.destination as? LoginViewController else { return }
        }
    }
     */
    
    func titleAnimation() {
        titleLabel.text = ""
        titleLabel.font = .boldSystemFont(ofSize: 50)
        var charIndex = 0.0
        let titleText = "⚡️FlashChat"
        for letter in titleText {
            Timer.scheduledTimer(withTimeInterval: 0.1 * charIndex, repeats: false) { (timer) in
                self.titleLabel.text?.append(letter)
            }
            charIndex += 1
        }
    }

}
