//
//  LoginController.swift
//  KeyBoard-Handling
//
//  Created by Amy Alsaydi on 2/4/20.
//  Copyright © 2020 Amy Alsaydi. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
    
    @IBOutlet weak var starbucksImage: UIImageView!
    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var userLabel: UILabel!
    @IBOutlet weak var userTextFeild: UITextField!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var passwordTextfield: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewWillLayoutSubviews() {
        loginButton.layer.cornerRadius = 10
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userTextFeild.delegate = self
        passwordTextfield.delegate = self
        registerForKeyboardNotifcations()

        
    }
    
    private func registerForKeyboardNotifcations() {
        // singleton:
        // set the current VC as an observer for notifications from the observer 
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        
         NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        
    }
    
    @objc func keyboardWillShow(_ notification: NSNotification) {
        print("keyboard shown")
        // here is where we animate the VC and push everyhting up away from the key board.
    }
    
    @objc func keyboardWillHide(_ notification: NSNotification) {
        print("keyboard hidden")
        // here is where we animate the VC and push everyhting back down

    }

}

extension LoginController: UITextFieldDelegate {
    
}

// note: save all the constraints that you want to alter in an array and map through it to animate it up.

// maybe add a tap gesture that resigns the key board if the view is touched.
