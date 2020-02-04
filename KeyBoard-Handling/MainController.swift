//
//  ViewController.swift
//  KeyBoard-Handling
//
//  Created by Amy Alsaydi on 2/4/20.
//  Copyright © 2020 Amy Alsaydi. All rights reserved.
//

import UIKit

class MainController: UIViewController {
    
    private lazy var tapGesture: UITapGestureRecognizer = {
        let gesture = UITapGestureRecognizer()
        gesture.addTarget(self, action: #selector(segue))
        return gesture
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addGestureRecognizer(tapGesture)
    }

     @objc private func segue() {
        
        // get instance of vc from story board
        // let storyBoard = UIStoryboard(name: <#T##String#>, bundle: <#T##Bundle?#>)
        
        guard let loginVC = storyboard?.instantiateViewController(withIdentifier: "LoginController") else {
            return
        }
        present(loginVC, animated: true)
        
        //navigationController?.pushViewController(loginVC, animated: true)
        
    }

}

