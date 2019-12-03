//
//  SecondViewController.swift
//  asmt-19_12_03
//
//  Created by SEONGJUN on 2019/12/03.
//  Copyright © 2019 Seongjun Im. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    var image: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.imageView.image = self.image
    }
    
    @IBAction func plusAll(_ sender: Any) {
        guard let vc = self.presentingViewController as? ViewController else {
            return
        }
        if vc.dCount < 8 {
          vc.dCount += 1
        }
        if vc.cCount < 10 {
          vc.cCount += 1
        }
        if vc.bCount < 15 {
          vc.bCount += 1
        }

    }
    
  
}
