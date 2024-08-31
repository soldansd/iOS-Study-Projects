//
//  ProductCardView.swift
//  OnlineShopFirebase
//
//  Created by Даниил Соловьев on 20/08/2024.
//

import SwiftUI

struct ProductCardView: View {
    
    @EnvironmentObject var vm: ViewModel
    let product: Product
    
    var body: some View {
        GeometryReader { geo in
            let size = geo.size
            
            ZStack(alignment: .bottom) {
                ZStack(alignment: .topTrailing) {
                    CardImageView(url: URL(string: product.image), width: size.width, height: size.height)
                    
                    Button {
                        vm.toggleFavorite(product: product)
                    } label: {
                        Image(systemName: "heart.fill")
                            .padding(10)
                            .foregroundStyle(product.isFavorite ? .red : .white)
                            .background(.black)
                            .clipShape(Circle())
                            .padding()
                    }
                }
                
                VStack(alignment: .leading) {
                    Text(product.name)
                        .titleFont()
                        .lineLimit(1)
                    Text("$\(product.price)")
                        .subtitleFont()
                        .lineLimit(1)
                }
                .padding(10)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(.background.opacity(0.5))
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(10)
            }
            
        }
        .frame(height: UIScreen.main.bounds.width * 0.7)
    }
}

#Preview {
    ProductCardView(
        product: Product(
            id: "DD",
            name: "Pixel 9",
            description: "dev",
            image: "https://firebasestorage.googleapis.com/v0/b/onlineshop-63e7e.appspot.com/o/10.jpg?alt=media&token=01c72c6d-2ad9-41b0-85f6-76fa26ec2524",
            price: 345,
            isFavorite: true,
            quantityInCart: nil
        )
    )
}
