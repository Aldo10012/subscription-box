//
//  LoginPageView.swift
//  subscription-box
//
//  Created by Alberto Dominguez on 2/10/21.
//

import UIKit

class LoginPageView: UIView {
    var pageColor: UIColor? = .white
    var title: String = ""
    var image: String = ""
    
    override init(frame: CGRect){
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
    }
    
    convenience init(pageColor:UIColor, title:String, image:String){
        self.init(frame: .zero)
        self.pageColor = pageColor
        self.title = title
        self.image = image
        
        setup()
    }
    
    private func setup(){
        self.backgroundColor = pageColor
        self.translatesAutoresizingMaskIntoConstraints = false
        
        // SETUP LOGIN PAGE
        
        
        let title : UILabel = {
            let title = UILabel()
            title.translatesAutoresizingMaskIntoConstraints = false
            title.numberOfLines = 1
            title.textAlignment = .center
            title.text = self.title
            title.textColor = .white
            title.font = UIFont(name: "Helvetica", size: 36)
            title.textColor = UIColor(white: 1.0, alpha: 0.8)
            return title
        }()
        
        let imageView : UIImageView = {
            let imageView = UIImageView()
            imageView.contentMode = .scaleAspectFit
            imageView.translatesAutoresizingMaskIntoConstraints = false
            imageView.image = UIImage(named: self.image)
            
            return imageView
        }()
        
        let line : UIView = {
            let line = UIView()
            line.translatesAutoresizingMaskIntoConstraints = false
            line.backgroundColor = .white
            return line
        }()
        
        let line2 : UIView = {
            let line = UIView()
            line.translatesAutoresizingMaskIntoConstraints = false
            line.backgroundColor = .white
            return line
        }()
        
        // textfields
        let username : UITextField = {
            let username = UITextField()
            username.translatesAutoresizingMaskIntoConstraints = false
            username.attributedPlaceholder = NSAttributedString(
                string:"Username",
                attributes: [NSAttributedString.Key.foregroundColor: UIColor.white]
            )
            username.textAlignment = NSTextAlignment(.left)
            username.textColor = UIColor.white
            username.borderStyle = .none
            
            return username
        }()
        
        let password : UITextField = {
            let password = UITextField()
            password.translatesAutoresizingMaskIntoConstraints = false
            password.attributedPlaceholder = NSAttributedString(
                string:"Password",
                attributes: [NSAttributedString.Key.foregroundColor: UIColor.white]
            )
            password.textColor = UIColor.white
            password.textAlignment = NSTextAlignment(.left)
            password.borderStyle = UITextField.BorderStyle.none
//            password.layer.addSublayer(UIView)

            return password
        }()

        
        let button : UIButton = {
            let button = UIButton()
            button.translatesAutoresizingMaskIntoConstraints = false
            button.setTitle("Login", for: .normal)
            button.setTitleColor(UIColor.darkGray, for: .normal)
            button.backgroundColor = UIColor.white
            button.layer.cornerRadius = 10
            button.layer.masksToBounds = true
            return button
        }()
        
        
        
        
        
        self.addSubview(title)
        NSLayoutConstraint.activate([
            title.topAnchor.constraint(equalTo: self.topAnchor, constant: 75),
            title.centerXAnchor.constraint(equalTo: self.centerXAnchor)
            
        ])
        
        
        self.addSubview(imageView)
        NSLayoutConstraint.activate([
            imageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            imageView.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 30),
            imageView.widthAnchor.constraint(equalToConstant: CGFloat(150) ),
            imageView.heightAnchor.constraint(equalToConstant: CGFloat(150) )
        ])
        
        
        self.addSubview(username)
        NSLayoutConstraint.activate([
            username.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 40),
            username.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            username.widthAnchor.constraint(equalTo: self.layoutMarginsGuide.widthAnchor, multiplier: 0.65)
        ])
        
        self.addSubview(line)
        NSLayoutConstraint.activate([
            line.widthAnchor.constraint(equalTo: self.layoutMarginsGuide.widthAnchor, multiplier: 0.65),
            line.heightAnchor.constraint(equalToConstant: CGFloat(2)),
            line.topAnchor.constraint(equalTo: username.bottomAnchor, constant: 0),
            line.leadingAnchor.constraint(equalTo: username.leadingAnchor)
        ])
        
        self.addSubview(password)
        NSLayoutConstraint.activate([
            password.topAnchor.constraint(equalTo: username.bottomAnchor, constant: 20),
            password.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            password.widthAnchor.constraint(equalTo: self.layoutMarginsGuide.widthAnchor, multiplier: 0.65)
        ])
        
        
        self.addSubview(button)
        NSLayoutConstraint.activate([
            button.widthAnchor.constraint(equalTo: self.layoutMarginsGuide.widthAnchor, multiplier: 0.65),
            button.heightAnchor.constraint(equalToConstant: CGFloat(40)),
            button.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -80),
            button.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        ])
        
        self.addSubview(line2)
        NSLayoutConstraint.activate([
            line2.widthAnchor.constraint(equalTo: self.layoutMarginsGuide.widthAnchor, multiplier: 0.65),
            line2.heightAnchor.constraint(equalToConstant: CGFloat(2)),
            line2.topAnchor.constraint(equalTo: password.bottomAnchor, constant: 0),
            line2.leadingAnchor.constraint(equalTo: password.leadingAnchor)
        ])
        
    }
    
    
}
