//
//  AuthService.swift
//  ExAdapter
//
//  Created by 김종권 on 2023/01/04.
//

import Foundation

enum AuthError: Error {
}

struct User {
    let id: String
    let name: String
    let age: Int
}

protocol AuthServiceType {
    func login(email: String, password: String, completion: (Result<(User), AuthError>) -> ())
}

final class AuthService: AuthServiceType {
    func login(email: String, password: String, completion: (Result<(User), AuthError>) -> ()) {
        // login 시도
    }
}
