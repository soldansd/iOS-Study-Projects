//
//  Product.swift
//  OnlineShopFirebase
//
//  Created by Даниил Соловьев on 20/08/2024.
//

import Foundation
import FirebaseFirestore

struct Product: Identifiable, Codable {
    @DocumentID var id: String?
    var name: String
    var description: String
    var image: String
    var price: Int
    var isFavorite: Bool
    var quantityInCart: Int?
}
