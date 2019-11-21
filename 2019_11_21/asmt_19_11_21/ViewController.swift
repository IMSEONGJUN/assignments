//
//  ViewController.swift
//  asmt_19_11_21
//
//  Created by SEONGJUN on 2019/11/21.
//  Copyright © 2019 Seongjun Im. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myLabel: UILabel!
    var value: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        self.myLabel.text = String(self.value)
    }

    @IBAction func plus(_ sender: Any) {
        self.value += 1
        self.myLabel.textColor = .systemBlue
        self.myLabel.text = String(self.value)
    }
    
    @IBAction func minus(_ sender: Any) {
        self.value -= 1
        self.myLabel.textColor = .systemRed
        self.myLabel.text = String(self.value)
    }
}

