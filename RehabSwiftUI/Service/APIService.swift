//
//  APIService.swift
//  RehabSwiftUI
//
//  Created by Takuya Ando on 2023/03/13.
//

import Foundation
import Combine
import Alamofire

protocol APIServiceProtocol {
    func fetchPoems(searchTerm: String) -> AnyPublisher<DataResponse<[Article], NetworkError>, Never>
}

final class APIService {
    static let shared: APIServiceProtocol = APIService()
    private init() { }
}

extension APIService: APIServiceProtocol {
    func fetchPoems(searchTerm: String) -> AnyPublisher<DataResponse<[Article], NetworkError>, Never> {
        
        let urlString: String = APIConst.api + "\(searchTerm)"
        let url = URL(string: urlString)!
        
        return AF.request(url, method: .get)
            .validate()
            .publishDecodable(type: [Article].self)
            .map { response in
                response.mapError { error in
                    let backendError = response.data.flatMap { try? JSONDecoder().decode(BackendError.self, from: $0)}
                    return NetworkError(initialError: error, backendError: backendError)
                }
            }
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
}
