//
//  ArticleViewModel.swift
//  RehabSwiftUI
//
//  Created by Takuya Ando on 2023/03/16.
//

import Foundation

final class ArticleViewModel: ObservableObject {
    
    @Published var text: String = ""
    
    var articles: [Article] = Bundle.main.decode("articleData.json")
    
    var fetchedArticles: [Article] = []
    
    func fetchArticles(text: String) {
        articles.forEach { article in
            if article.title.contains(text) {
                fetchedArticles.append(article)
            }
        }
    }
}
