//
//  ViewController.swift
//  TrafficLight
//
//  Created by Paul Matar on 01.03.2022.
//

import UIKit

enum CurrentLight {
    case red, yellow, green
}

class ViewController: UIViewController {
    
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    private var currentLight = CurrentLight.red
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 10
        
        redView.alpha = lightIsOff
        yellowView.alpha = lightIsOff
        greenView.alpha = lightIsOff
        
    }
    
    override func viewDidLayoutSubviews() {
        redView.layer.cornerRadius = redView.frame.width / 2
        yellowView.layer.cornerRadius = yellowView.frame.width / 2
        greenView.layer.cornerRadius = greenView.frame.width / 2
    }


    
    @IBAction func startButtonPressed() {
        if startButton.currentTitle == "START" {
            startButton.setTitle("NEXT", for: .normal)
        }
        
        switch currentLight {
        case .red:
            greenView.alpha = lightIsOff
            redView.alpha = lightIsOn
            currentLight = .yellow
        case .yellow:
            redView.alpha = lightIsOff
            yellowView.alpha = lightIsOn
            currentLight = .green
        case .green:
            yellowView.alpha = lightIsOff
            greenView.alpha = lightIsOn
            currentLight = .red
        }
//        if redView.alpha != 1 && yellowView.alpha != 1 {
//            redView.alpha = 1
//            yellowView.alpha = 0.3
//            greenView.alpha = 0.3
//        } else if yellowView.alpha != 1 && greenView.alpha != 1 {
//            redView.alpha = 0.3
//            yellowView.alpha = 1
//            greenView.alpha = 0.3
//        } else if greenView.alpha != 1 && redView.alpha != 1 {
//            redView.alpha = 0.3
//            yellowView.alpha = 0.3
//            greenView.alpha = 1
//        }
    }
    
}

