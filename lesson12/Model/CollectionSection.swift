//
//  CollectionSection.swift
//  lesson12
//
//  Created by Dmitrii Nazarov on 11.09.2024.
//
import Foundation

struct CollectionSection: Identifiable{
    let id: String = UUID().uuidString
    let header: String
    let items: [CollectionItem]
    

    static func mockData() -> [CollectionSection] {
        let storyItems = [
            CollectionItem(image: "story1", name: "Name1"),
            CollectionItem(image: "story2", name: "Name2"),
            CollectionItem(image: "story3", name: "Name3"),
            CollectionItem(image: "story4", name: "Name4"),
        ]
        
        let messageItems = [
            CollectionItem(image: "story1", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit"),
            CollectionItem(image: "story2", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit"),
            CollectionItem(image: "story3", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit"),
            CollectionItem(image: "story4", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit"),
            CollectionItem(image: "story1", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit"),
        ]
        
        let newsItems = [
            CollectionItem(image: "news1", header: "Заголовок", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit"),
            CollectionItem(image: "news2", header: "Заголовок2", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit"),
            CollectionItem(image: "news3", header: "Заголовок3", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit"),CollectionItem(image: "news1", header: "Заголовок", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit"),
            CollectionItem(image: "news2", header: "Заголовок2", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit"),
            CollectionItem(image: "news3", header: "Заголовок3", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit"),CollectionItem(image: "news1", header: "Заголовок", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit"),
            CollectionItem(image: "news2", header: "Заголовок2", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit"),
            CollectionItem(image: "news3", header: "Заголовок3", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit"),
        ]
        
        let bannerItems = [
            CollectionItem(image: "banner1"),
            CollectionItem(image: "banner2"),
            CollectionItem(image: "banner3"),
        ]
        
        let storySection = CollectionSection(header: "Stories", items: storyItems)
        let messageSection = CollectionSection(header: "Messages", items: messageItems)
        let newsSection = CollectionSection(header: "News", items: newsItems)
        let bannersSection = CollectionSection(header: "Banners", items: bannerItems)
        
        return [storySection, messageSection, newsSection, bannersSection]
    }
}


