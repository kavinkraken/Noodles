//
//  Models.swift
//  Noddles
//
//  Created by Kavinkumar S Thangammal on 20/12/22.
//

import Foundation

//   let modelNoodleList = try? newJSONDecoder().decode(ModelNoodleList.self, from: jsonData)

struct ModelNoodle: Codable {
    var brand, variety: String?
    var style: String?
    var country: String?
    var stars: String?
    var topTen: String?

    enum CodingKeys: String, CodingKey {
        case brand = "Brand"
        case variety = "Variety"
        case style = "Style"
        case country = "Country"
        case stars = "Stars"
        case topTen = "Top Ten"
    }
}


struct ModelImageList: Codable {
    var image: String?

    enum CodingKeys: String, CodingKey {
        case image = "Image"
    }
}
