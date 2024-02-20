//
//  HomeFactory.swift
//  Petty
//
//  Created by Ibrahim Nasser Ibrahim on 20/02/2024.
//

import Foundation

class HomeFactory {
    var delegate: HomeSectionsDelegate
    
    init(delegate: HomeSectionsDelegate) {
        self.delegate = delegate
    }
    
    func createSection(section: HomeType) -> any SectionsLayout {
        switch section {
            case .features(items: let items):
                return FeaturesSection(items: items, delegate: delegate)
            case .categories(items: let items):
                return CategoriesSection(items: items, delegate: delegate)
            case .service(items: let items, title: let title):
                return ServiceSection(items: items, delegate: delegate, headerTitle: title)
        }
    }
}
