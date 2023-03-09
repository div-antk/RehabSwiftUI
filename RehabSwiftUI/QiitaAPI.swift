//
//  QiitaAPI.swift
//  RehabSwiftUI
//
//  Created by Takuya Ando on 2023/03/13.
//

import Combine
import Foundation
import Alamofire

protocol BaseAPIProtocol {
    associatedtype ResponseType
    
    var method: HTTPMethod { get }
    var baseURL: URL { get }
    var path: String { get }
    var headers: [String : String]? { get }
    var allowsConstrainedNetworkAccess: Bool { get }
}

extension BaseAPIProtocol {
    
    
}
