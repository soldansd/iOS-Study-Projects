//
//  TopArticleView.swift
//  NewsApp
//
//  Created by Даниил Соловьев on 31/07/2024.
//

import SwiftUI

struct TopArticleView: View {
    
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
                            .frame(width: 260, height: 150)
                            .clipShape(RoundedRectangle(cornerRadius: 5))
                    } else {
                        ZStack {
                            Rectangle()
                                .frame(height: 150)
                                .foregroundStyle(.secondary)
                                .opacity(0.3)
                                .clipShape(RoundedRectangle(cornerRadius: 5))
                            
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
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .frame(width: 260, height: 260)
        .padding(10)
        .background(.background)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

//#Preview {
//    TopArticleView()
//}
