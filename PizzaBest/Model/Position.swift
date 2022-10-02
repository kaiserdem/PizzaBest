//
//  Position.swift
//  PizzaBest
//
//  Created by kaiserdem  on 02.10.2022.
//

import Foundation

struct Position {
    
    var id: String
    var product: Product
    var count: Int
    var cost: Int {
        return product.price * self.count
    }
    
}
