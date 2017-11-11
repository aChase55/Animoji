//
//  ViewController.swift
//  Example
//
//  Created by Lasha Efremidze on 11/9/17.
//  Copyright © 2017 Lasha Efremidze. All rights reserved.
//

import UIKit
import Animoji

class ViewController: UIViewController {
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        FrameworkLoader.loadFramework()
    }
    
    @IBOutlet weak var animoji: Animoji! {
        didSet {
            animoji.setPuppet(name: .cat)
        }
    }
}
