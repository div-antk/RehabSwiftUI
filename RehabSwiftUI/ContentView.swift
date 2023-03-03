//
//  ContentView.swift
//  RehabSwiftUI
//
//  Created by Takuya Ando on 2023/03/02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: "person")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Name")
                    .font(.system(size: 16, weight: .bold))
            }
            Text("time")
            Text("Title")
                .font(.system(size: 20, weight: .bold))
                .padding(.top, 1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
