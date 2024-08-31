//
//  BottomArticleView.swift
//  NewsApp
//
//  Created by Даниил Соловьев on 31/07/2024.
//

import SwiftUI

struct BottomArticleView: View {
    
    let article: Article
    
    var body: some View {
        VStack {
            
            if let strURLImage = article.urlToImage,
               let imageURL = URL(string: strURLImage) {
                AsyncImage(url: imageURL) { phase in
                    if let image = phase.image {
                        image
                            .resizable()
                            .scaledToFill()
                            .frame(width: 120, height: 120)
                            .clipShape(RoundedRectangle(cornerRadius: 5))
                    } else {
                        ZStack {
                            RoundedRectangle(cornerRadius: 5)
                                .frame(width: 120, height: 120)
                                .foregroundStyle(.secondary)
                                .opacity(0.3)
                            
                            Image(systemName: "photo")
                                .resizable()
                                .foregroundStyle(.secondary)
                                .scaledToFit()
                                .frame(height: 50)
                        }
                    }
                }
            }
            
            VStack(alignment: .leading) {
                Text(article.title ?? "No title")
                    .titleFont()
                
                Spacer()
                
                Text(article.publishedAt.converDate())
                    .descriptionFont()
            }
        }
        .frame(width: 120, height: 240)
        .padding(10)
        .background(.background)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}


//#Preview {
//    BottomArticleView()
//}
