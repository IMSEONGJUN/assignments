//
//  ViewController.swift
//  ASMT19_11_26
//
//  Created by SEONGJUN on 2019/11/26.
//  Copyright © 2019 Seongjun Im. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let myLabel = UILabel()
    let text = UITextField()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        text.becomeFirstResponder()
    }
    
    func setupUI() {
        
        text.frame = CGRect(x: 50, y: 250, width: 300, height: 50)
        text.borderStyle = .bezel
        text.textColor = .black
        text.font = UIFont.systemFont(ofSize: 30)
        text.clearButtonMode = .whileEditing
        text.addTarget(self, action: #selector(editingChanged(_:)), for: .editingChanged)
        text.addTarget(self, action: #selector(primaryActionTriggered(_:)), for: .primaryActionTriggered)
        view.addSubview(text)
        
        myLabel.frame = CGRect(x: 50, y: 100, width: 300, height: 50)
        myLabel.font = UIFont.systemFont(ofSize: 20)
        myLabel.textColor = .red
        myLabel.text = "ㅋㅋㅋㅋ"
        view.addSubview(myLabel)
    }

    
    @objc func editingChanged(_ sender: UITextField) {
        self.myLabel.font = UIFont.systemFont(ofSize: 40)
        self.myLabel.textColor = .blue
        self.myLabel.text = sender.text ?? ""
    }
    
    @objc func primaryActionTriggered(_ sender: Any) {
        self.myLabel.font = UIFont.systemFont(ofSize: 20)
        self.myLabel.textColor = .red
    }
    
    

}

