//
//  ViewController.swift
//  TrafficLight
//
//  Created by Елена Рудакова on 30.04.2023.
//

import UIKit

class ViewController: UIViewController {
    
    final class ViewController: UIViewController {
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
            
            redView.layer.cornerRadius = redView.frame.width / 2
            yellowView.layer.cornerRadius = yellowView.frame.width / 2
            greenView.layer.cornerRadius = greenView.frame.width / 2
            

            @IBAction func startButtonPressed() {
                if startButton.currentTitle = "START" {
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
                        greenView.alpha = lightIsOn
                        yellowView.alpha = lightIsOff
                        currentLight = .red
                    }
                }
            }
        
extension ViewController {
    
    private enum CurrentLight {
        case red, yellow, green
    }
}
