//
//  ContentView.swift
//  RehabSwiftUI
//
//  Created by Takuya Ando on 2023/03/02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.green
//                .opacity(0.5)
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 24) {
                ScrollView {
                    MainArticleListCell()
                    MainArticleListCell()
                    MainArticleListCell()
                    MainArticleListCell()
                    MainArticleListCell()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
