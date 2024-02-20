//
//  HomeModel.swift
//  Petty
//
//  Created by Ibrahim Nasser Ibrahim on 20/02/2024.
//

import Foundation

struct HomeModel: Codable {
    let sections: [HomeType]
}

enum HomeType: Codable {
    case features(items: [FeaturesModel])
    case categories(items: [CategoriesModel])
    case service(items: [ServiceModel], title: String)
    case fashion(items: [FashionModel], title: String)
}
