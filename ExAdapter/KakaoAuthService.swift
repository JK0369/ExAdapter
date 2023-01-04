//
//  KakaoAuthService.swift
//  ExAdapter
//
//  Created by 김종권 on 2023/01/04.
//

import Foundation

struct KakaoUser {
    let kakaoID: String
    let name: String
    let email: String
}

class KakaoAuthService {
    func login(email: String, password: String, kakaoKey: String, completion: (Result<(KakaoUser), AuthError>) -> ()) {
    }
}

// MARK: Adapter
class KakaoAuthAdapter: AuthServiceType {
    let kakaoAuthService = KakaoAuthService()
    
    func login(email: String, password: String, completion: (Result<(User), AuthError>) -> ()) {
        kakaoAuthService.login(email: "", password: "", kakaoKey: "kakaoKey") { result in
            completion(.success(.init(id: "", name: "", age: 1)))
        }
    }
}
