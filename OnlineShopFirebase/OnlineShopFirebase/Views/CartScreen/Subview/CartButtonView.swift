//
//  CartButtonView.swift
//  OnlineShopFirebase
//
//  Created by Даниил Соловьев on 20/08/2024.
//

import SwiftUI

struct CartButtonView: View {
    
    var numberOfProducts: Int
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Image(systemName: "cart.fill")
                .font(.title2)
                .padding(.top, 5)
            
            if numberOfProducts > 0 {
                Text("\(numberOfProducts)")
                    .font(.caption)
                    .bold()
                    .foregroundStyle(.white)
                    .frame(width: 17, height: 17)
                    .background(.red)
                    .clipShape(Circle())
            }
        }
    }
}

#Preview {
    CartButtonView(numberOfProducts: 3)
}
