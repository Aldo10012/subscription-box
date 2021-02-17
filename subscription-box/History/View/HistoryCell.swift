//
//  HistoryCell.swift
//  subscription-box
//
//  Created by Alberto Dominguez on 2/15/21.
//

import UIKit

class HistoryCell: UITableViewCell {

    let background : UIView = {
      let background = UIView()
      background.layer.cornerRadius = 5
      background.layer.masksToBounds = true
      background.translatesAutoresizingMaskIntoConstraints = false
      return background
    }()

    
    //initializer for a cell
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.setup()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setup()
    }

    func setup() {
        self.contentView.addSubview(background)
        NSLayoutConstraint.activate([
            background.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 10),
            background.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor),
            background.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
            background.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor)
        ])
    }
    

    

}
