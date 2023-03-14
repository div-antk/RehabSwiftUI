//
//  ContentView.swift
//  RehabSwiftUI
//
//  Created by Takuya Ando on 2023/03/02.
//

import SwiftUI

struct ContentView: View {
    
    @State private var text = ""
    
    var body: some View {
        ZStack {
            Color.green
//                .opacity(0.5)
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 24) {
                TextField("入力しなさい", text: $text)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal, 24)
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
