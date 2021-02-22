//
//  Cell.swift
//  CollectionView-practice
//
//  Created by Alberto Dominguez on 2/20/21.
//

import UIKit

class NewBoxCell: UICollectionViewCell {
    static let identifier = "Cell"
    var item = ""
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.backgroundColor = .lightGray
        imageView.layer.cornerRadius = 20
        return imageView
    }()
    
    override init(frame: CGRect){
        super.init(frame: frame)
        contentView.addSubview(imageView)
        imageView.image = UIImage(named: item)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = contentView.bounds
        imageView.image = nil
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
    
}
