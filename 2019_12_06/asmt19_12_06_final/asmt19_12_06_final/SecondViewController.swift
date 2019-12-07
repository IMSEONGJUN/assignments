//
//  SecondViewController.swift
//  asmt19_12_06_final
//
//  Created by SEONGJUN on 2019/12/06.
//  Copyright © 2019 Seongjun Im. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    let disPlayLabel = UILabel()
    let dismissButton = UIButton()
    var text = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.disPlayLabel.text = self.text
        setupUI()
    }
    
    private func setupUI() {
        view.backgroundColor = .white
        
        disPlayLabel.frame.size = CGSize(width: 300, height: 50)
        disPlayLabel.center = CGPoint(x: view.center.x, y: 100)
        disPlayLabel.backgroundColor = .black
        disPlayLabel.textColor = .green
        disPlayLabel.textAlignment = .center
        view.addSubview(disPlayLabel)
        
        dismissButton.frame.size = CGSize(width: 200, height: 50)
        dismissButton.center = view.center
        dismissButton.setTitle("dismiss", for: .normal)
        dismissButton.setTitleColor(.blue, for: .normal)
        dismissButton.backgroundColor = .yellow
        dismissButton.addTarget(self, action: #selector(back(_:)), for: .touchUpInside)
        view.addSubview(dismissButton)
    }
    
    @objc private func back(_ sender:UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    

    

}
