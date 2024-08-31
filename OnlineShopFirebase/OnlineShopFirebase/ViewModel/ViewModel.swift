//
//  ViewModel.swift
//  OnlineShopFirebase
//
//  Created by Даниил Соловьев on 20/08/2024.
//

import Foundation
import FirebaseFirestore
import FirebaseStorage

final class ViewModel: ObservableObject {
    private var db = Firestore.firestore().collection("shop")
    @Published var cartItems: [Product] = []
    
    var cartItemCount: Int {
        cartItems.filter{($0.quantityInCart ?? -1) > 0}.count
    }
    
    var totalPrice: Int {
        cartItems.reduce(0) { $0 + $1.price * ($1.quantityInCart ?? 0) }
    }
    
    init() {
        fetchItems()
    }
    
    private func fetchItems() {
        db.addSnapshotListener { snapshot, error in
            guard let documents = snapshot?.documents else {
                print("Error fetching documents: \(error!)")
                return
            }
            
            self.cartItems = documents.compactMap({ document -> Product? in
                try? document.data(as: Product.self)
            })
        }
    }
    
    func toggleFavorite(product: Product) {
        updateItem(product: product, data: ["isFavorite" : !product.isFavorite])
    }
    
    func addToCart(product: Product) {
        updateItem(product: product, data: ["quantityInCart": 1])
    }
    
    func removeFromCart(product: Product) {
        updateItem(product: product, data: ["quantityInCart" : 0])
    }
    
    func increaseQuantity(product: Product) {
        let newQuantity = (product.quantityInCart ?? 0) + 1
        updateItem(product: product, data: ["quantityInCart" : newQuantity])
    }
    
    func decreaseQuantity(product: Product) {
        let currentQuantity = product.quantityInCart ?? 0
        let newQuantity = max(currentQuantity - 1, 1)
        updateItem(product: product, data: ["quantityInCart" : newQuantity])
    }
    
    private func updateItem(product: Product, data: [String: Any]) {
        guard let id = product.id else { return }
        db.document(id).updateData(data)
    }
}
