//
//  HeaderModel.swift
//  Petty
//
//  Created by Ibrahim Nasser Ibrahim on 19/02/2024.
//

import Foundation

struct FeaturesModel {
    let petImage: String
    let offerTitle: String
    let offerDate: String
    let offerSubtitle: String
}

extension FeaturesModel {
    static let mockData: [FeaturesModel] = [
        .init(petImage: "dogs",
              offerTitle: "Discount 20%",
              offerDate: "2/3/2023 - 2/4/2023",
              offerSubtitle: "Apply for all pet"),
        .init(petImage: "dogs",
              offerTitle: "Discount 20%",
              offerDate: "2/3/2023 - 2/4/2023",
              offerSubtitle: "Apply for all pet"),
        .init(petImage: "dogs",
              offerTitle: "Discount 20%",
              offerDate: "2/3/2023 - 2/4/2023",
              offerSubtitle: "Apply for all pet"),
        .init(petImage: "dogs",
              offerTitle: "Discount 20%",
              offerDate: "2/3/2023 - 2/4/2023",
              offerSubtitle: "Apply for all pet"),
        .init(petImage: "dogs",
              offerTitle: "Discount 20%",
              offerDate: "2/3/2023 - 2/4/2023",
              offerSubtitle: "Apply for all pet")
    ]
}
