//
//  MartFactory.swift
//  Petty
//
//  Created by Ibrahim Nasser Ibrahim on 20/02/2024.
//

import Foundation

class MartFactory {
    var delegate: MartSectionsDelegate
    
    init(delegate: MartSectionsDelegate) {
        self.delegate = delegate
    }
    
    func createSection(section: MartType) -> any SectionsLayout {
        switch section {
//            case .features(items: let items):
//                return FeaturesSection(items: items, delegate: delegate)
            case .categories(items: let items):
                return CategoriesSection(items: items, delegate: delegate)
//            case .service(items: let items, title: let title):
//                return ServiceSection(items: items, delegate: delegate, headerTitle: title)
//            case .fashion(items: let items, title: let title):
//                return FashionSection(items: items, delegate: delegate, headerTitle: title)
        }
    }
}
