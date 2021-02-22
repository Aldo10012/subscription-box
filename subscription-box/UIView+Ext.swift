//
//  UIView+Ext.swift
//  subscription-box
//
//  Created by Alberto Dominguez on 2/16/21.
//

import UIKit

extension UIView {
    func pin(to superView: UIView){
        translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            trailingAnchor.constraint(equalTo: superView.trailingAnchor),
            leadingAnchor.constraint(equalTo: superView.leadingAnchor),
            topAnchor.constraint(equalTo: superView.topAnchor),
            bottomAnchor.constraint(equalTo: superView.bottomAnchor),
        ])
    }
}
