//
//  HistoryBoxDetailCell.swift
//  subscription-box
//
//  Created by Alberto Dominguez on 2/16/21.
//

import UIKit

class BoxItemCell: UITableViewCell {

    var itemImageView = UIImageView()
    var itemDetailLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(itemImageView)
        addSubview(itemDetailLabel)
       
        configureImageView()
        configureDetailLabel()
        setImageConstraints()
        setDetailLabelConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(item: BoxItem){
        itemImageView.image = UIImage(named: item.name)
        itemDetailLabel.text = item.description  
    }
    
    func configureImageView() {
        itemImageView.layer.cornerRadius = 10
        itemImageView.clipsToBounds      = false
        
    }
    
    func configureDetailLabel(){
        itemDetailLabel.numberOfLines = 0
        itemDetailLabel.adjustsFontSizeToFitWidth = true
    }
    
    func setImageConstraints() {
        itemImageView.translatesAutoresizingMaskIntoConstraints = false
        itemImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive                 = true
        itemImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive   = true
        itemImageView.heightAnchor.constraint(equalToConstant: 80).isActive                     = true
        itemImageView.widthAnchor.constraint(equalToConstant: 80).isActive      = true
    }
    
    func setDetailLabelConstraints() {
        itemDetailLabel.translatesAutoresizingMaskIntoConstraints = false
        itemDetailLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        itemDetailLabel.leadingAnchor.constraint(equalTo: itemImageView.trailingAnchor, constant: 20).isActive = true
        itemDetailLabel.heightAnchor.constraint(equalToConstant: 80).isActive = true
        itemDetailLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = false
    }
}
