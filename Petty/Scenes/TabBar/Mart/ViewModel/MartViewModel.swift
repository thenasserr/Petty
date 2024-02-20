//
//  MartViewModel.swift
//  Petty
//
//  Created by Ibrahim Nasser Ibrahim on 20/02/2024.
//

import Foundation

typealias MartSectionsDelegate = FeaturesSectionDelegate & CategoriesSectionDelegate & ServiceSectionDelegate & FashionSectionDelegate

class MartViewModel {
    let martModel: MartModel? = JSONDecoder().decode(forResource: "Mart")
    
    lazy var factory = MartFactory(delegate: self)
    
    func getSections() -> [any SectionsLayout] {
        guard let sections = martModel?.sections else {
            return []
        }
        
        return sections.map { factory.createSection(section: $0)}
    }
}

extension MartViewModel: MartSectionsDelegate {
    func fashionSection(_ section: FashionSection, item: FashionModel) {
        
    }
    
    func featuresSection(_ section: FeaturesSection, item: FeaturesModel) {
        
    }
    
    func categoriesSection(_ section: CategoriesSection, item: CategoriesModel) {
    
    }
    
    func serviceSection(_ section: ServiceSection, item: ServiceModel) {
        
    }
}
