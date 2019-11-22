//
//  ViewController.swift
//  ASMT-2019-11-22
//
//  Created by SEONGJUN on 2019/11/22.
//  Copyright © 2019 Seongjun Im. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var mySwitch: UISwitch!
    @IBOutlet private weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.mySwitch.isOn = true
        self.myLabel.text = "ON"
        
    }
    
    @IBAction func switchToggle(_ sender: Any) {
        
        let swit = sender as! UISwitch
        self.myLabel.text = swit.isOn ? "ON" : "OFF"
    }
    
    @IBAction func segmentControl(_ sender: UISegmentedControl) {
        self.myLabel.text = sender.titleForSegment(at: sender.selectedSegmentIndex)
    }
    

}

