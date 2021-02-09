//
//  OnboardingPageView.swift
//  subscription-box
//
//  Created by Alberto Dominguez on 2/3/21.
//

import UIKit

class OnboardingPageView: UIView {
    var pageColor: UIColor? = .white
    var imageName : String = ""
    var message : String = ""
    var isLastPage : Bool = false
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    convenience init(backgroundColor:UIColor, imageName:String, message:String, isLastPage:Bool){
        self.init(frame: .zero)
        self.backgroundColor = backgroundColor
        self.imageName = imageName
        self.message = message
        self.isLastPage = isLastPage
        setup()
    }
    
    private func setup(){
        self.translatesAutoresizingMaskIntoConstraints = false
                
        // SET UP STACKVIEW
        let stackView : UIStackView = {
            let stackView = UIStackView()
            stackView.axis = .vertical
            stackView.spacing = 10
            stackView.distribution = .fill
            stackView.translatesAutoresizingMaskIntoConstraints = false
            return stackView
        }()
        
        let imageView : UIImageView = {
            let imageView = UIImageView()
            imageView.contentMode = .scaleAspectFit
            imageView.translatesAutoresizingMaskIntoConstraints = false
            //imageView.image = UIImage(named: "mask-woman")
            return imageView
        }()
        
        let messageLabel : UILabel = {
            let messageLabel = UILabel()
            messageLabel.numberOfLines = 0
            messageLabel.textAlignment = .center
            messageLabel.font = UIFont(name: "Helvetica", size: 20)
            messageLabel.textColor = UIColor(white: 1.0, alpha: 0.8)
            //messageLabel.text = "Here goes a message"
            return messageLabel
        }()
        
        let button : UIButton = {
            let button = UIButton()
            button.translatesAutoresizingMaskIntoConstraints = false
            button.setTitle("Continue", for: .normal)
            button.setTitleColor(UIColor.darkGray, for: .normal)
            button.backgroundColor = UIColor.white
            button.layer.cornerRadius = 10
            button.layer.masksToBounds = true
            return button
        }()
        
        self.addSubview(stackView)

        NSLayoutConstraint.activate([
            stackView.widthAnchor.constraint(equalTo: self.layoutMarginsGuide.widthAnchor, multiplier: 0.65),
            stackView.heightAnchor.constraint(equalTo: self.layoutMarginsGuide.heightAnchor, multiplier: 0.6),
            stackView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            stackView.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        ])
        
        stackView.addArrangedSubview(imageView)
        imageView.heightAnchor.constraint(equalTo: stackView.heightAnchor, multiplier: 0.55).isActive = true
        stackView.addArrangedSubview(messageLabel)
        
        if isLastPage{
            stackView.addArrangedSubview(button)
            button.heightAnchor.constraint(equalToConstant: 30).isActive = true
        }
        
        imageView.image = UIImage(named: imageName)
        messageLabel.text = message
        self.backgroundColor = backgroundColor
        
        
    }
       

}
