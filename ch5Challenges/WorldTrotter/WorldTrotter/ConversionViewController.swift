//
//  ViewController.swift
//  WorldTrotter
//
//  Created by Jonathan Paul on 4/9/21.
//

import UIKit

extension UIColor {
    public convenience init?(hex: String) {
        let r, g, b, a: CGFloat

        if hex.hasPrefix("#") {
            let start = hex.index(hex.startIndex, offsetBy: 1)
            let hexColor = String(hex[start...])

            if hexColor.count == 8 {
                let scanner = Scanner(string: hexColor)
                var hexNumber: UInt64 = 0

                if scanner.scanHexInt64(&hexNumber) {
                    r = CGFloat((hexNumber & 0xff000000) >> 24) / 255
                    g = CGFloat((hexNumber & 0x00ff0000) >> 16) / 255
                    b = CGFloat((hexNumber & 0x0000ff00) >> 8) / 255
                    a = CGFloat(hexNumber & 0x000000ff) / 255

                    self.init(red: r, green: g, blue: b, alpha: a)
                    return
                }
            }
        }

        return nil
    }
}

class ConversionViewController: UIViewController {
    // silver challenge chapter 5 creating the convert view programatically
    override func loadView() {
        super.loadView()
        view.backgroundColor = UIColor.white
        print("Loaded view")
        
        let boilFar = UILabel()
        boilFar.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        boilFar.text = "212"
        boilFar.font = boilFar.font.withSize(70)
        boilFar.textColor = UIColor(hex: "#E15829FF")
        boilFar.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(boilFar)
        
        let degFar = UILabel()
        degFar.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        degFar.text = "degrees Fahrenheit"
        degFar.font = degFar.font.withSize(36)
        degFar.textColor = UIColor(hex: "#E15829FF")
        degFar.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(degFar)
        
        let isReally = UILabel()
        isReally.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        isReally.text = "is really"
        isReally.font = isReally.font.withSize(36)
        isReally.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(isReally)
        
        let boilCel = UILabel()
        boilCel.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        boilCel.text = "100"
        boilCel.font = boilCel.font.withSize(70)
        boilCel.textColor = UIColor(hex: "#E15829FF")
        boilCel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(boilCel)
        
        let degCel = UILabel()
        degCel.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        degCel.text = "degrees Celsius"
        degCel.font = degCel.font.withSize(36)
        degCel.textColor = UIColor(hex: "#E15829FF")
        degCel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(degCel)
        
        // constraints
        let boilFarTop = boilFar.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8)
        let boilFarCenter = boilFar.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        boilFarTop.isActive = true
        boilFarCenter.isActive = true
        
        let degFarTop = degFar.topAnchor.constraint(equalTo: boilFar.bottomAnchor, constant: 8)
        let degFarCenter = degFar.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        degFarTop.isActive = true
        degFarCenter.isActive = true
        
        let isReallyTop = isReally.topAnchor.constraint(equalTo: degFar.bottomAnchor, constant: 8)
        let isReallyCenter = isReally.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        isReallyTop.isActive = true
        isReallyCenter.isActive = true
        
        let boilCelTop = boilCel.topAnchor.constraint(equalTo: isReally.bottomAnchor, constant: 8)
        let boilCelCenter = boilCel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        boilCelTop.isActive = true
        boilCelCenter.isActive = true
        
        let degCelTop = degCel.topAnchor.constraint(equalTo: boilCel.bottomAnchor, constant: 8)
        let degCelCenter = degCel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        degCelTop.isActive = true
        degCelCenter.isActive = true

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("ConversionViewController loaded its view.")
    }
    
    
}
