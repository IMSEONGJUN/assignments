//
//  ViewController.swift
//  asmt-19_12_03
//
//  Created by SEONGJUN on 2019/12/03.
//  Copyright © 2019 Seongjun Im. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myLabel: UILabel!
    
    var images = ["dog":UIImage(named: "dog.png"), "cat":UIImage(named: "cat.png"), "bird":UIImage(named: "bird.png")]
    
    var dCount = 0
    var cCount = 0
    var bCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.myLabel.text = "\(self.dCount),\(self.cCount),\(self.bCount)"
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "dog" && self.dCount + 1 > 8 {
            return false
        }
        else if identifier == "cat" && self.cCount + 1 > 10 {
            return false
        }
        else if identifier == "bird" && self.bCount + 1 > 15 {
            return false
        }
        else {
            return true
        }
    }
    
    @IBAction func unwindTofirst(_ unwindSegue: UIStoryboardSegue) {
        //let sourceViewController = unwindSegue.source
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        guard let secondVC = segue.destination as? SecondViewController else {return}
        
        if segue.identifier == "dog" {
            self.dCount += 1
            secondVC.image = self.images["dog"] ?? UIImage(named: "dog.png")
        }
        else if segue.identifier == "cat" {
            self.cCount += 1
            secondVC.image = self.images["cat"] ?? UIImage(named: "cat.png")
        }
        else {
            self.bCount += 1
            secondVC.image = self.images["bird"] ?? UIImage(named: "bird.png")
        }
        
    }
    
    @IBAction func reset(_ sender: Any) {
        self.dCount = 0
        self.cCount = 0
        self.bCount = 0
        
        self.myLabel.text = "\(self.dCount),\(self.cCount),\(self.bCount)"
    }
    
    
    
}

