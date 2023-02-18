//
//  AuthService.swift
//  PizzaBest
//
//  Created by kaiserdem  on 18.02.2023.
//

import Foundation
import FirebaseAuth

class AuthService {
    static let shared = AuthService()
    
    private init() {}
    
    private let auth = Auth.auth()
    
    private var currentUser: User? { auth.currentUser }
    
    func signUp(email: String,
                password: String,
                completion: @escaping (Result<User, Error>) -> Void) {
        
        auth.createUser(withEmail: email,
                        password: password) { result, error in
            if let result = result {
                completion(.success(result.user))
            } else if let error = error {
                completion(.failure(error))
            }
            
        }
        
    }
    
    
}
