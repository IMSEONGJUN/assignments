//
//  ViewController.swift
//  asmt19_12_06_final
//
//  Created by SEONGJUN on 2019/12/06.
//  Copyright © 2019 Seongjun Im. All rights reserved.
//

import UIKit

struct Singleton {
    static var shared = Singleton()
    var text = ""
    private init(){
        
    }
}


class ViewController: UIViewController {

    let myTextField = UITextField()
    let moveByUD = UIButton()
    let moveByST = UIButton()
    
    let ud = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    private func setupUI(){
        myTextField.frame.size = CGSize(width: 300, height: 50)
        myTextField.center = CGPoint(x: view.center.x, y: 200)
        myTextField.placeholder = "텍스트를 입력하세요"
        myTextField.textAlignment = .center
        myTextField.borderStyle = .bezel
        myTextField.addTarget(self, action: #selector(edittingChanged(_:)), for: .editingChanged)
        view.addSubview(myTextField)
        
        moveByUD.frame.size = CGSize(width: 150, height: 40)
        moveByUD.frame.origin = CGPoint(x: 50, y: 300)
        moveByUD.setTitle("UserDefault", for: .normal)
        moveByUD.setTitleColor(.blue, for: .normal)
        moveByUD.layer.cornerRadius = 10
        moveByUD.layer.borderWidth = 2
        moveByUD.layer.borderColor = UIColor.black.cgColor
        moveByUD.backgroundColor = .yellow
        moveByUD.addTarget(self, action: #selector(didTapButton(_:)), for: .touchUpInside)
        view.addSubview(moveByUD)
        
        moveByST.frame.size = CGSize(width: 150, height: 40)
        moveByST.frame.origin = CGPoint(x: 230, y: 300)
        moveByST.setTitle("Singleton", for: .normal)
        moveByST.setTitleColor(.blue, for: .normal)
        moveByST.backgroundColor = .yellow
        moveByST.addTarget(self, action: #selector(didTapButton(_:)), for: .touchUpInside)
        view.addSubview(moveByST)
        
    }
    
    @objc private func edittingChanged(_ sender:UITextField) {
        let str = sender.text ?? ""
        ud.set(str, forKey: "ud")
        Singleton.shared.text = sender.text ?? ""
    }
    
    @objc private func didTapButton(_ sender:UIButton) {
        switch sender {
        case moveByUD:
            let svc = SecondViewController()
            svc.text = ud.string(forKey: "ud") ?? ""
            svc.modalPresentationStyle = .fullScreen
            self.present(svc,animated: true)
        default:
            let svc = SecondViewController()
            svc.text = Singleton.shared.text
            svc.modalPresentationStyle = .fullScreen
            self.present(svc,animated: true)
        }
    }

}


