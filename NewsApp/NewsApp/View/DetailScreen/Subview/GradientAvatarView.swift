//
//  GradientAvatarView.swift
//  NewsApp
//
//  Created by Даниил Соловьев on 01/08/2024.
//

import SwiftUI

struct GradientAvatarView: View {
    
    var body: some View {
        GeometryReader { _ in
            LinearGradient(
                colors: [Color(UIColor.systemBackground), .clear],
                startPoint: .bottom,
                endPoint: .top
            )
            .frame(height: SizeConstants.avatarHeight / 4)
            .offset(y: -SizeConstants.avatarHeight / 4)
        }
    }
}

#Preview {
    GradientAvatarView()
}
