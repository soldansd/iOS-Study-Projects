//
//  MainImageView.swift
//  NewsApp
//
//  Created by Даниил Соловьев on 01/08/2024.
//

import SwiftUI

struct MainImageView: View {
    
    let article: Article
    
    var body: some View {
        GeometryReader { geometry in
            if let strURLImage = article.urlToImage,
               let imageURL = URL(string: strURLImage) {
                AsyncImage(url: imageURL) { phase in
                    if let image = phase.image {
                        image
                            .resizable()
                            .scaledToFill()
                            .offset(y: -geometry.frame(in: .global).minY)
                            .frame(
                                width: SizeConstants.screenWidth,
                                height: geometry.frame(in: .global).minY + SizeConstants.avatarHeight + 10
                            )
                    }
                }
            }
        }
        .frame(height: SizeConstants.avatarHeight)
    }
}

//#Preview {
//    MainImageView()
//}
