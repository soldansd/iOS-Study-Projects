//
//  DetailInfoView.swift
//  OnlineShopFirebase
//
//  Created by Даниил Соловьев on 20/08/2024.
//

import SwiftUI

struct DetailInfoView: View {
    
    @EnvironmentObject var vm: ViewModel
    let product: Product
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                Text(product.name)
                    .titleFont()
                Spacer()
                Text("$\(product.price)")
                    .titleFont()
            }
            
            Text(product.description)
                .subtitleFont()
                .fixedSize(horizontal: false, vertical: true)
                .lineLimit(6)
            
            Spacer()
            
            CustomMainButtonView(title: "Add to card") {
                vm.addToCart(product: product)
            }
        }
        .padding(.horizontal, 30)
    }
}


//#Preview {
//    DetailInfoView()
//}
