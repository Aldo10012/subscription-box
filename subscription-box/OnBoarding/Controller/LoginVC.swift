//
//  LoginVC.swift
//  subscription-box
//
//  Created by Alberto Dominguez on 2/8/21.
//

import UIKit

class LoginVC: UIViewController {

    let loginPage: LoginPageView = {
        let view = LoginPageView(pageColor: #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1), title: "KovidKit", image:"remote-work-man")
        return view
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.addSubview(loginPage)
        NSLayoutConstraint.activate([
            loginPage.widthAnchor.constraint(equalToConstant: view.frame.size.width),
            loginPage.heightAnchor.constraint(equalToConstant: view.frame.size.height),
            loginPage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginPage.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    
    
    

    

}
