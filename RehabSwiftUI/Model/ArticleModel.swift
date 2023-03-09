//
//  ArticleModel.swift
//  RehabSwiftUI
//
//  Created by Takuya Ando on 2023/03/13.
//

import SwiftUI

struct Article: Codable {
    let title: String
    let likes_count: Int
    let updated_at: String
    let url: String
    let user: User
    struct User: Codable {
        let id: String
        let name: String
        let profile_image_url: String
    }
}
