//
//  CellProtocol.swift
//  lesson12
//
//  Created by Dmitrii Nazarov on 11.09.2024.
//

import UIKit

protocol CellProtocol: AnyObject {
    static var reuseID: String { get }
    var imageView: UIImageView { get set}
    func setupCell(item: CollectionItem)
}
