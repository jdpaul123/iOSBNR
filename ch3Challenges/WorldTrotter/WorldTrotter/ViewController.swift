//
//  ViewController.swift
//  WorldTrotter
//
//  Created by Jonathan Paul on 4/9/21.
//

import UIKit

class ViewController: UIViewController {
    let gradient = CAGradientLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gradient.colors = [
            UIColor.red.cgColor,
            UIColor.orange.cgColor,
            UIColor.green.cgColor,
            UIColor.blue.cgColor
        ]
        gradient.locations = [0, 0.25, 0.5, 1]
        gradient.frame.size = view.frame.size
        
        view.layer.insertSublayer(gradient, at: 0)
    }
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        gradient.frame.size = view.frame.size
    }
}
