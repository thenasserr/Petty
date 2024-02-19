//
//  CategoriesModel.swift
//  Petty
//
//  Created by Ibrahim Nasser Ibrahim on 19/02/2024.
//

import Foundation

struct CategoriesModel: Codable {
    let image: String
}

extension CategoriesModel {
    static let mockData: [CategoriesModel] = [
        .init(image: "categories/dog"),
        .init(image: "categories/cat"),
        .init(image: "categories/bird"),
        .init(image: "categories/fish")
    ]
}