//
//  HomeViewModel.swift
//  Petty
//
//  Created by Ibrahim Nasser Ibrahim on 20/02/2024.
//

import Foundation

typealias HomeSectionsDelegate = FeaturesSectionDelegate & CategoriesSectionDelegate & ServiceSectionDelegate

class HomeViewModel {
    let homeModel: HomeModel? = JSONDecoder().decode(forResource: "Home")
    
    lazy var factory = HomeFactory(delegate: self)
    
    func getSections() -> [any SectionsLayout] {
        guard let sections = homeModel?.sections else {
            return []
        }
        
        return sections.map { factory.createSection(section: $0)}
    }
}

extension HomeViewModel: HomeSectionsDelegate {
    func featuresSection(_ section: FeaturesSection, item: FeaturesModel) {
        
    }
    
    func categoriesSection(_ section: CategoriesSection, item: CategoriesModel) {
    
    }
    
    func serviceSection(_ section: ServiceSection, item: ServiceModel) {
        
    }
}
