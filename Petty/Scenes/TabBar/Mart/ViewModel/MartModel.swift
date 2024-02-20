//
//  MartModel.swift
//  Petty
//
//  Created by Ibrahim Nasser Ibrahim on 20/02/2024.
//

import Foundation

struct MartModel: Codable {
    let sections: [MartType]
}

enum MartType: Codable {
    case categories(items: [CategoriesModel])
//    case flash(items: [ServiceModel], title: String)
//    case sales(items: [FashionModel], title: String)
}
