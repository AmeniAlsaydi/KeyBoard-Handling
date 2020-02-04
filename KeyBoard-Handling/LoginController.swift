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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userTextFeild.delegate = self
        passwordTextfield.delegate = self
        registerForKeyboardNotifcations()

        
    }
    
    private func registerForKeyboardNotifcations() {
        // singleton:
        // add ourselevs ass observer
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        
         NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        
    }
    
    @objc func keyboardWillShow(_ notification: NSNotification) {
        print("keyboard shown")
    }
    
    @objc func keyboardWillHide(_ notification: NSNotification) {
        print("keyboard hidden")
        
    }

}

extension LoginController: UITextFieldDelegate {
    
}

// note: save all the constraints that you want to alter in an array and map through it to animate it up.
