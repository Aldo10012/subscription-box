//
//  ViewController.swift
//  subscription-box
//
//  Created by Alberto Dominguez on 1/31/21.
//
import UIKit

class OnboardingVC: UIViewController {

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
        
        
       
        var firstPage: OnboardingPageView {
            let view = OnboardingPageView(
                backgroundColor: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1),
                imageName: "mask-man",
                message: "here is a message",
                isLastPage: false
            )
            return view
        }
        
        var secondPage: OnboardingPageView {
            let view = OnboardingPageView(
                backgroundColor: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1),
                imageName: "mask-woman",
                message: "here is another message",
                isLastPage: false
            )
            return view
        }
        
        var thirdPage: OnboardingPageView {
            let view = OnboardingPageView(
                backgroundColor: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1),
                imageName: "remote-work-man",
                message: "here is yet another message",
                isLastPage: true
            )
            return view
        }
        

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
    

}

