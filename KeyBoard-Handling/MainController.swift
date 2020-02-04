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
        view.backgroundColor = #colorLiteral(red: 0.5357257724, green: 0.6674801707, blue: 0.6198809147, alpha: 1)
        view.addGestureRecognizer(tapGesture)
        
    }

     @objc private func segue() {
        
        // get instance of vc from story board
        
    }

}

