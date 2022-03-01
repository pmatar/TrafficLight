//
//  ViewController.swift
//  TrafficLight
//
//  Created by Paul Matar on 01.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var startButton: UIButton!
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.layer.cornerRadius = 65
        yellowView.layer.cornerRadius = 65
        greenView.layer.cornerRadius = 65
        
        startButton.layer.cornerRadius = 10
    }

    @IBAction func startButtonPressed() {
        startButton.setTitle("NEXT", for: .normal)
        
        if redView.alpha != 1 && yellowView.alpha != 1 {
            redView.alpha = 1
            yellowView.alpha = 0.3
            greenView.alpha = 0.3
        } else if yellowView.alpha != 1 && greenView.alpha != 1 {
            redView.alpha = 0.3
            yellowView.alpha = 1
            greenView.alpha = 0.3
        } else if greenView.alpha != 1 && redView.alpha != 1 {
            redView.alpha = 0.3
            yellowView.alpha = 0.3
            greenView.alpha = 1
        }
    }
    
}

