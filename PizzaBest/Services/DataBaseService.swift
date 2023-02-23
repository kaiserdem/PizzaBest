//
//  DataBaseService.swift
//  PizzaBest
//
//  Created by kaiserdem  on 23.02.2023.
//

import Foundation
import FirebaseFirestore

class DataBaseService {
    
    static let shared = DataBaseService()
    
    private let db = Firestore.firestore()
    
    private var usersRef: CollectionReference {
        return db.collection("users")
    }
    
    private init() {}
    
    func setUser(user: UserProfile, completion: @escaping(Result<UserProfile, Error>) -> Void) {
        
        usersRef.document(user.id).setData(user.representation) { error in
            if let error = error {
                completion(.failure(error))
            } else {
                completion(.success(user))
            }
        }
    }
}


