//
//  MainTabBarViewModel.swift
//  PizzaBest
//
//  Created by kaiserdem  on 19.02.2023.
//

import Foundation
import FirebaseAuth

class MainTabBarViewModel: ObservableObject {
    
    @Published var user: User
    
    init(user: User) {
        self.user = user
    }
}
