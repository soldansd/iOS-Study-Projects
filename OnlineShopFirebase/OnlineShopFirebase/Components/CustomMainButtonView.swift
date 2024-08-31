//
//  CustomMainButtonView.swift
//  OnlineShopFirebase
//
//  Created by Даниил Соловьев on 20/08/2024.
//

import SwiftUI

struct CustomMainButtonView: View {
    
    let title: String
    let action: () -> ()
    
    var body: some View {
        Button {
            action()
        } label: {
            Text(title)
                .frame(maxWidth: .infinity)
                .fontWeight(.bold)
                .foregroundStyle(.white)
                .padding()
                .background(.black)
                .clipShape(Capsule())
                .shadow(color: .black.opacity(0.3), radius: 10, x: 5, y: 8)
        }
    }
}

//#Preview {
//    CustomMainButtonView()
//}
