//
//  ViewController.swift
//  SuccinctState
//
//  Created by Zheng on 5/29/20.
//  Copyright © 2020 Zheng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /// the gray rectangle
    @IBOutlet weak var centerView: UIView!
    
    
    @IBOutlet weak var temperatureLabel: UILabel!
    
    /// off = Celsius, on = Fahrenheit
    var temperatureSwitchIsOn = false
    @IBOutlet weak var temperatureSwitch: UISwitch!
    
    @IBAction func temperatureSwitchToggled(_ sender: Any) {
        temperatureSwitchIsOn = temperatureSwitch.isOn
        if temperatureSwitchIsOn {
            temperatureLabel.text = "32 °F"
        } else {
            temperatureLabel.text = "0 °C"
        }
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        centerView.layer.cornerRadius = 8
        
        /// make sure the element and the property match at the beginning
        temperatureSwitchIsOn = true
        temperatureSwitch.isOn = true
        
    }


}

