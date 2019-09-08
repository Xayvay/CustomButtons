//
//  ViewController.swift
//  CustomButtons
//
//  Created by Xavier Shelton on 9/8/19.
//  Copyright © 2019 Xavier Shelton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var customButton = CustomButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpCustomButtonConstraints()
        addActionToButton()
        customButton.setTitle("Button", for:isnormal)
    }
    
    func setUpCustomButtonConstraints(){
        view.addSubview(customButton)
        customButton.translatesAutoresizingMaskIntoConstraints = false
        customButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        customButton.widthAnchor.constraint(equalToConstant: 280).isActive = true
        customButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        customButton.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -200).isActive = true
    }
    
    func addActionToButton(){
        customButton.addTarget(self, action: #selector(customButtonTapped), for: .touchUpInside)
    }
    
    @objc func customButtonTapped(){
        customButton.shakeButton()
    }
}

