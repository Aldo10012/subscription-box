//
//  ViewController.swift
//  subscription-box
//
//  Created by Alberto Dominguez on 1/31/21.
//
import UIKit

class ViewController: UIViewController {

    let scrollView: UIScrollView = {
        let scrollView = UIScrollView( )
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.isPagingEnabled = true
        scrollView.showsHorizontalScrollIndicator = false
        return scrollView
    }()
    
    let container: UIStackView = {
        let container = UIStackView()
        container.axis = .horizontal
        container.spacing = 0
        container.distribution = .fillEqually
        container.translatesAutoresizingMaskIntoConstraints = false
        return container
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // SET UP SCROLLVIEW
        view.addSubview(scrollView)
        setupScrollView()
        
        
        // SET UP STACKVIEW
        scrollView.addSubview(container)
        setupContainer()
        
        
        let firstPage = createOnboardingPage(message: "here is a message", imageName: "mask-man", color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1), isLastPage: false)
        let secondPage = createOnboardingPage(message: "here is another message", imageName: "mask-woman", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1), isLastPage: false)
        let thirdPage = createOnboardingPage(message: "here is yet another message", imageName: "remote-work-man", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1), isLastPage: true)

        let pagesArray = [firstPage, secondPage, thirdPage]
        
        for page in pagesArray{
            page.translatesAutoresizingMaskIntoConstraints = false
            container.addArrangedSubview(page)
            page.widthAnchor.constraint(equalToConstant: view.frame.size.width).isActive = true
            
        }
    }
    
    
    func setupScrollView(){
        NSLayoutConstraint.activate([
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    func setupContainer(){
        NSLayoutConstraint.activate([
            container.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            container.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            container.topAnchor.constraint(equalTo: scrollView.topAnchor),
            container.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            container.heightAnchor.constraint(equalTo: scrollView.heightAnchor)
        ])
    }
    
    func createOnboardingPage(message: String, imageName: String, color: UIColor, isLastPage: Bool) -> UIView{
        let page = UIView()
        
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
            button.setTitle("Submit", for: .normal)
            button.setTitleColor(UIColor.darkGray, for: .normal)
            button.backgroundColor = UIColor.white
            button.layer.cornerRadius = 10
            button.layer.masksToBounds = true
            return button
        }()
        
        page.addSubview(stackView)

        NSLayoutConstraint.activate([
            stackView.widthAnchor.constraint(equalTo: page.layoutMarginsGuide.widthAnchor, multiplier: 0.65),
            stackView.heightAnchor.constraint(equalTo: page.layoutMarginsGuide.heightAnchor, multiplier: 0.6),
            stackView.centerYAnchor.constraint(equalTo: page.centerYAnchor),
            stackView.centerXAnchor.constraint(equalTo: page.centerXAnchor)
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
        page.backgroundColor = color
        
        return page
    }
}

