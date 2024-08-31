//
//  ProductRowView.swift
//  OnlineShopFirebase
//
//  Created by Даниил Соловьев on 20/08/2024.
//

import SwiftUI

struct ProductRowView: View {
    
    let product: Product
    
    var body: some View {
        
        ZStack(alignment: .trailing) {
            HStack(spacing: 20) {
                CardImageView(url: URL(string: product.image), width: 100, height: 100)
                
                VStack(alignment: .leading, spacing: 20) {
                    Text(product.name)
                    
                    if let quantityInCart = product.quantityInCart {
                        let sum = quantityInCart * product.price
                        Text("$\(sum)")
                    }
            
                }
                
                Spacer()
            }
            .padding(10)
            .background(.background)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            
            RemoteControlRowView(product: product)
        }
        .shadow(color: .black.opacity(0.1), radius: 7, x: 5, y: 6)
        .padding(.horizontal, 10)
    }
}

#Preview {
    NavigationStack {
        ProductRowView(product: Product(
            id: "DD",
            name: "Pixel 9",
            description: "devjifsdghbiv bisldai lbvjiiv jbfdsljvb fjdskvb klslfjkdb vskldj fbvldfb vkvd jfbvk ldsvfb lsbfdksl vblkjdsbf kjvbkdlf vbsklbv fdkbv kjfkjl svbfdk jkflsv bfdjksfv sdj kfbl kdfskl vjblfdgboi rueg guai rlpva",
            image: "https://firebasestorage.googleapis.com/v0/b/onlineshop-63e7e.appspot.com/o/10.jpg?alt=media&token=01c72c6d-2ad9-41b0-85f6-76fa26ec2524",
            price: 345,
            isFavorite: true
        ))
    }
}

