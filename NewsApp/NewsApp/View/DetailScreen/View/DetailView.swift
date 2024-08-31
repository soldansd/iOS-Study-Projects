//
//  DetailView.swift
//  NewsApp
//
//  Created by Даниил Соловьев on 31/07/2024.
//

import SwiftUI

struct DetailView: View {
    
    let article: Article
    
    var body: some View {
        
        ZStack(alignment: .topLeading) {
        
            ScrollView(.vertical, showsIndicators: false) {
                MainImageView(article: article)
                
                VStack(alignment: .leading, spacing: 20) {
                    Text(article.title ?? "No title")
                        .titleFont()
                    
                    Text(article.description ?? "No description")
                        .descriptionFont()
                    
                    Text(article.publishedAt.converDate())
                        .descriptionFont()
                }
                .padding(.horizontal)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(.background)
                .background(GradientAvatarView())
            }
            .ignoresSafeArea()
            .navigationBarBackButtonHidden(true)
            
            BackButtonView()
                .padding(.leading)
        }
    }
}

#Preview {
    DetailView(
        article: Article(
            title: "Example",
            description: "Long description",
            url: "",
            urlToImage: "https://s.yimg.com/ny/api/res/1.2/wpr4yLnPYAsdgvuATkyY1g--/YXBwaWQ9aGlnaGxhbmRlcjt3PTEyMDA7aD02MDA-/https://media.zenfs.com/en/the_wall_street_journal_hosted_996/5dc98ee7f1476661832203c5c1219d30",
            publishedAt: Date()
        )
    )
}
