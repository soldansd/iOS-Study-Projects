//
//  FavoritesView.swift
//  OnlineShopFirebase
//
//  Created by Даниил Соловьев on 20/08/2024.
//

import SwiftUI
import FirebaseFirestore

struct FavoritesView: View {
    
    @FirestoreQuery(
        collectionPath: "shop",
        predicates: [.isEqualTo("isFavorite", true)]
    ) private var favoritesItems: [Product]
    var columns = Array(repeating: GridItem(), count: 2)
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVGrid(columns: columns) {
                ForEach(favoritesItems) { item in
                    NavigationLink(destination: DetailView(product: item)) {
                        ProductCardView(product: item)
                    }
                    .buttonStyle(.plain)
                }
            }
        }
        .padding(.horizontal, 10)
        .background(.secondary.opacity(0.3))
        .navigationTitle("Favorites")
    }
}

#Preview {
    FavoritesView()
}
