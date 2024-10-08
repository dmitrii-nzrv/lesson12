//
//  CollectionItem.swift
//  lesson12
//
//  Created by Dmitrii Nazarov on 11.09.2024.
//

import UIKit

struct CollectionItem: Identifiable {
    let id: String = UUID().uuidString
    let image: String
    var header: String? 
    var name: String?
    var text: String?
}
