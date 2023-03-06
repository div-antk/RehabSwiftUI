//
//  MainArticleListCell.swift
//  RehabSwiftUI
//
//  Created by Takuya Ando on 2023/03/06.
//

import SwiftUI

struct MainArticleListCell: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: "person")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Name")
                    .font(.system(size: 16, weight: .bold))
                Spacer()
            }
            .padding(.top, 20)
            .padding(.leading, 16)
            Text("time")
                .padding(.top, 0.4)
                .padding(.leading, 16)
            Text("Title")
                .font(.system(size: 20, weight: .bold))
                .padding(.top, 4)
                .padding(.leading, 16)
                .padding(.bottom, 20)
        }
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(
                    Color.green,
                    style: StrokeStyle(lineWidth: 2))
        )
        .padding(.all, 20)
    }
}

struct MainArticleListCell_Previews: PreviewProvider {
    static var previews: some View {
        MainArticleListCell()
    }
}
