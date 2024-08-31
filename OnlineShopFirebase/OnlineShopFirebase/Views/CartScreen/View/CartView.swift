//
//  CartView.swift
//  OnlineShopFirebase
//
//  Created by Даниил Соловьев on 20/08/2024.
//

import SwiftUI
import FirebaseFirestore

struct CartView: View {
    
    @FirestoreQuery(collectionPath: "shop") private var items: [Product]
    @EnvironmentObject var vm: ViewModel
    
    var body: some View {
        VStack {
            ScrollView(.vertical, showsIndicators: false) {
                ForEach(items.filter({($0.quantityInCart ?? -1) > 0})) { item in
                    ProductRowView(product: item)
                }
            }
            
            Text("Total: \(vm.totalPrice)")
                .titleFont()
                .padding(.bottom)
            
            CustomMainButtonView(title: "Buy") {
                
            }
            .padding(.horizontal, 30)
        }
        .navigationTitle("Cart")
        .background(.secondary.opacity(0.3))
    }
}

#Preview {
    CartView()
        .environmentObject(ViewModel())
}
