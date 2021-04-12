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
            UIColor.yellow.cgColor,
            UIColor.green.cgColor,
            UIColor.blue.cgColor,
            UIColor.purple.cgColor
        ]
        gradient.locations = [0, 0.16, 0.33, 0.49, 0.66 , 0.82, 1]
        
        view.layer.insertSublayer(gradient, at: 0) // this inserts the layer behind everyrhing else
    }
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        gradient.frame.size = view.frame.size // helps for switching the device orientation
    }
}
