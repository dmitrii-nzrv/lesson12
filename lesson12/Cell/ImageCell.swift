//
//  ImageCell.swift
//  lesson12
//
//  Created by Dmitrii Nazarov on 12.09.2024.
//

import UIKit

class ImageCell: UICollectionViewCell, CellProtocol{
    static var reuseID: String = "ImageCell"
    
    lazy var imageView: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        //$0.widthAnchor.constraint(equalToConstant: 80).isActive = true
        $0.heightAnchor.constraint(equalToConstant: 200).isActive = true
        $0.layer.cornerRadius = 40
        $0.contentMode = .scaleAspectFill
        $0.clipsToBounds = true
        return $0
    }(UIImageView())
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.addSubview(imageView)
        
        setupConstr()
        
    }
    
    func setupCell(item: CollectionItem){
        imageView.image = UIImage(named: item.image)
      
    }
    
    func setupConstr(){
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: topAnchor),
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            imageView.heightAnchor.constraint(equalTo: imageView.widthAnchor),
            
        ])
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
