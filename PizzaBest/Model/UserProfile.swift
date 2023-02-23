//
//  UserProfile.swift
//  PizzaBest
//
//  Created by kaiserdem  on 23.02.2023.
//

import Foundation

struct UserProfile: Identifiable {
    
    var id: String 
    var name: String
    var phone: Int
    var address: String
    
    var representation: [String: Any] {
        var repres = [String: Any]()
        repres["id"] =  self.id
        repres["name"] =  self.name
        repres["phone"] =  self.phone
        repres["address"] =  self.address

        return repres
    }
}
