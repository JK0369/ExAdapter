//
//  ViewController.swift
//  ExAdapter
//
//  Created by 김종권 on 2023/01/04.
//

import UIKit

// Adapter 사용 전
class ViewController: UIViewController {
    let authService: AuthServiceType = AuthService()
    
    // new
    let naverAuthService = NaverAuthService()
    let kakaoAuthService = KakaoAuthService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        authService.login(email: "email", password: "password") {
            print($0)
        }
        
        naverAuthService.login(email: "email", password: "password", naverKey: "naverKey") {
            print($0)
        }
        
        kakaoAuthService.login(email: "email", password: "password", kakaoKey: "kakaoKey") {
            print($0)
        }
    }
}

// Adapter 사용 후
class ViewController2: UIViewController {
    let authService: AuthServiceType = AuthService()
    
    // new
    let naverAuthAdapter: AuthServiceType = NaverAuthAdapter()
    let kakaoAuthAdapter: AuthServiceType = KakaoAuthAdapter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        authService.login(email: "email", password: "password") {
            print($0)
        }
        
        naverAuthAdapter.login(email: "email", password: "password") {
            print($0)
        }
        
        kakaoAuthAdapter.login(email: "email", password: "password") {
            print($0)
        }
    }
}

