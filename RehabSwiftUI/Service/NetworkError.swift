//
//  NetworkError.swift
//  RehabSwiftUI
//
//  Created by Takuya Ando on 2023/03/13.
//

import Foundation
import Alamofire

struct NetworkError: Error {
    let initialError: AFError
    let backendError: BackendError?
}

struct BackendError: Codable, Error {
    var status: String
    var message: String
}
