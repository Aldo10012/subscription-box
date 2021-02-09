//
//  LoginVC.swift
//  subscription-box
//
//  Created by Alberto Dominguez on 2/8/21.
//

import UIKit

class LoginVC: UIViewController {

    let loginButton : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Login", for: .normal)
        button.setTitleColor(UIColor.darkGray, for: .normal)
        button.backgroundColor = UIColor.white
        button.layer.cornerRadius = 10
        button.layer.masksToBounds = true
        return button
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.addSubview(loginButton)
        setupLoginButton()
        
        // Do any additional setup after loading the view.
    }
    
    func setupLoginButton(){
        loginButton.centerYAnchor.constraint(equalTo: self.centerYAnchor),
        loginButton.centerXAnchor.constraint(equalTo: self.centerXAnchor)
    }
    
    
    
    
    

    

}
