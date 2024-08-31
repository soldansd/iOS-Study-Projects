//
//  Extension+Text.swift
//  OnlineShopFirebase
//
//  Created by Даниил Соловьев on 20/08/2024.
//

import SwiftUI

extension Text {
    func titleFont() -> some View {
        self
            .foregroundStyle(.primary)
            .font(.system(size: 18, weight: .bold, design: .rounded))
            .opacity(0.8)
    }
    
    func subtitleFont() -> some View {
        self
            .foregroundStyle(.primary)
            .font(.system(size: 15, weight: .regular, design: .rounded))
            .opacity(0.8)
    }
}

struct FontView: View {
    var body: some View {
        Text("Title")
            .titleFont()
        Text("Subtitle")
            .subtitleFont()
    }
}

#Preview {
    FontView()
}
