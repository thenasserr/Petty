//
//  MultiModel.swift
//  Petty
//
//  Created by Ibrahim Nasser Ibrahim on 19/02/2024.
//

import Foundation

struct ServiceModel {
    let image: String
    let title: String
    let subtitle: String
    let background: String
}

extension ServiceModel {
    static let mockData1: [ServiceModel] = [
        .init(image: "image30", title: "Health care for your pets", subtitle: "service", background: "9747FF"),
        .init(image: "image30", title: "Health care for your pets", subtitle: "service", background: "8ED0C5")
    ]
    
    static let mockData2: [ServiceModel] = [
        .init(image: "service", title: "Bathing pets service", subtitle: "", background: "ABDCFC"),
        .init(image: "service", title: "Play whit pets", subtitle: "", background: "FBAE9E")
    ]
}
