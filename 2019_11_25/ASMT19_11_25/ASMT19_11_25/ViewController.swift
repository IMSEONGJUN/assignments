//
//  ViewController.swift
//  ASMT19_11_25
//
//  Created by SEONGJUN on 2019/11/25.
//  Copyright © 2019 Seongjun Im. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let myLabel = UILabel()
    let button = UIButton()
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        setupUI()
        print("VC viewDidLoad")
    }
    override func viewWillAppear(_ animated: Bool) {
        self.myLabel.text = String(self.count)
        print("VC viewWillAppear")
    }
    
    func setupUI() {
        
        myLabel.frame = CGRect(x: 200, y: 200, width: 100, height: 50)
        view.addSubview(myLabel)
        
        button.frame.size = CGSize(width: 100, height: 50)
        button.setTitleColor(.black, for: .normal)
        button.center = view.center
        button.setTitle("GotoSecVC", for: .normal)
        button.addTarget(self, action: #selector(didTapButton(_:)), for: .touchUpInside)
        view.addSubview(button)
    }
    
    @objc private func didTapButton(_ sender: UIButton) {
        self.count += 1
        let svc = SecondViewController()
        svc.modalPresentationStyle = .fullScreen
        svc.count = self.count
        present(svc, animated: true)
    }


}

