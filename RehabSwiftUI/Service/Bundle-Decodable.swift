//
//  Bundle-Decodable.swift
//  RehabSwiftUI
//
//  Created by Takuya Ando on 2023/03/13.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("no url")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("no data")
        }
        
        let deocder = JSONDecoder()
        
        guard let loaded = try? deocder.decode(T.self, from: data) else {
            fatalError("no decoding")
        }
        
        return loaded
    }
}
