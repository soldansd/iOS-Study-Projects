//
//  DetailView.swift
//  OnlineShopFirebase
//
//  Created by Даниил Соловьев on 20/08/2024.
//

import SwiftUI

struct DetailView: View {
    
    @EnvironmentObject var vm: ViewModel
    let product: Product
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            VStack {
                CardImageView(url: URL(string: product.image), width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 1.7)
                    .ignoresSafeArea()
                    .shadow(color: .black.opacity(0.3), radius: 10, x: 5, y: 8)
                
                DetailInfoView(product: product)
            }
            .background(.secondary.opacity(0.3))
            .navigationBarBackButtonHidden()
            
            BackButtonView()
                .padding()
        }
    }
}

#Preview {
    DetailView(product: Product(
        id: "DD",
        name: "Pixel 9",
        description: "devjifsdghbiv bisldai lbvjiiv jbfdsljvb fjdskvb klslfjkdb vskldj fbvldfb vkvd jfbvk ldsvfb lsbfdksl vblkjdsbf kjvbkdlf vbsklbv fdkbv kjfkjl svbfdk jkflsv bfdjksfv sdj kfbl kdfskl vjblfdgboi rueg guai rlpva",
        image: "https://firebasestorage.googleapis.com/v0/b/onlineshop-63e7e.appspot.com/o/10.jpg?alt=media&token=01c72c6d-2ad9-41b0-85f6-76fa26ec2524",
        price: 345,
        isFavorite: true
    ))
    .environmentObject(ViewModel())
}
