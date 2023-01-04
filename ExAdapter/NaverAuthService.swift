//
//  NaverAuthService.swift
//  ExAdapter
//
//  Created by 김종권 on 2023/01/04.
//

import Foundation

struct NaverUser {
    let naverID: String
    let name: String
    let email: String
}

class NaverAuthService {
    func login(email: String, password: String, naverKey: String, completion: (Result<(NaverUser), AuthError>) -> ()) {
    }
}

// MARK: Adapter
class NaverAuthAdapter: AuthServiceType {
    let naverAuthService = NaverAuthService()
    
    func login(email: String, password: String, completion: (Result<(User), AuthError>) -> ()) {
        naverAuthService.login(email: "", password: "", naverKey: "naverKey") { result in
            completion(.success(.init(id: "", name: "", age: 1)))
        }
    }
}
