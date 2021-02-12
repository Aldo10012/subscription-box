//
//  TabBarController.swift
//  subscription-box
//
//  Created by Alberto Dominguez on 2/12/21.
//

import UIKit

class TabBarController: UITabBarController, UITabBarControllerDelegate {
    var firstItemImageView: UIImageView!
    var secondItemImageView: UIImageView!
    var thirdItemImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self

        view.self.backgroundColor = .red
        
        setupViewControllers()
        setupTabBarIcons()
        
    }
    
    func setupTabBarIcons(){
        let firstItemView = self.tabBar.subviews[0]
        let secondItemView = self.tabBar.subviews[1]
        let thirdItemImageView = self.tabBar.subviews[2]

        self.firstItemImageView = (firstItemView.subviews.first as! UIImageView)
        self.firstItemImageView.contentMode = .center

        self.secondItemImageView = (secondItemView.subviews.first as! UIImageView)
        self.secondItemImageView.contentMode = .center
        
        self.thirdItemImageView = (thirdItemImageView.subviews.first as! UIImageView)
        self.thirdItemImageView.contentMode = .center
    }
    
    func setupViewControllers(){
        let homeVC = HomeVC()
        let navController1 = UINavigationController(rootViewController:homeVC)
        homeVC.tabBarItem = UITabBarItem(title: "New", image: UIImage(systemName: "house"), tag: 0)

        let newBoxVC = NewBoxVC()
        let navController2 = UINavigationController(rootViewController:newBoxVC)
        newBoxVC.tabBarItem = UITabBarItem(title: "History", image: UIImage(systemName: "shippingbox"), tag: 1)
        
        let historyVC = HistoryVC()
        let navController3 = UINavigationController(rootViewController:historyVC)
        historyVC.tabBarItem = UITabBarItem(title: "History", image: UIImage(systemName: "clock.arrow.circlepath"), tag: 2)
        

        viewControllers = [navController1, navController2, navController3]

    }



}
