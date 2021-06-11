//
//  ViewController.swift
//  WorldTrotter
//
//  Created by Jonathan Paul on 4/9/21.
//

import UIKit

// START GENERATING A RANDOM COLOR
extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}

extension UIColor {
    static func random() -> UIColor {
        return UIColor(
            red: .random(),
            green: .random(),
            blue: .random(),
            alpha: 1.0
        )
    }
}
// END GENERATING A RNADOM COLOR

class ConversionViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("ConversionViewController loaded its view.")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        view.backgroundColor = .random()
    }
    
}

