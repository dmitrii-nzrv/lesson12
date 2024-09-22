//
//  NewsCell.swift
//  lesson12
//
//  Created by Dmitrii Nazarov on 12.09.2024.
//

import UIKit

class NewsCell: UICollectionViewCell, CellProtocol{
    static var reuseID: String = "NewsCell"
    
    lazy var imageView: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        //$0.widthAnchor.constraint(equalToConstant: 80).isActive = true
        $0.heightAnchor.constraint(equalToConstant: 165).isActive = true
        $0.layer.cornerRadius = 30
        $0.contentMode = .scaleAspectFill
        $0.clipsToBounds = true
        return $0
    }(UIImageView())
    
    lazy var nameLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.font = .systemFont(ofSize: 24, weight: .bold)
        $0.textColor = .white
        $0.numberOfLines = 0
        $0.textAlignment = .center
        return $0
    }(UILabel())
    
    lazy var descrLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.numberOfLines = 0
        $0.font = .systemFont(ofSize: 16, weight: .bold)
        $0.textColor = .white
        $0.textAlignment = .left
        return $0
    }(UILabel())
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.addSubview(imageView)
        imageView.addSubview(nameLabel)
        imageView.addSubview(descrLabel)
        
        
        setupConstr()
        
    }
    
    func setupCell(item: CollectionItem){
        imageView.image = UIImage(named: item.image)
        nameLabel.text = item.header
        descrLabel.text = item.text
    }
    
    func setupConstr(){
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: topAnchor),
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            //imageView.heightAnchor.constraint(equalToConstant: 350),
            
            nameLabel.topAnchor.constraint(equalTo: imageView.topAnchor, constant: 30),
            nameLabel.leadingAnchor.constraint(equalTo: imageView.leadingAnchor, constant: 20),
           
            
            descrLabel.bottomAnchor.constraint(equalTo: imageView.bottomAnchor, constant: -20),
            descrLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            descrLabel.trailingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: -10)
        ])
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
