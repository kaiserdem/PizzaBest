//
//  CartViewModel.swift
//  PizzaBest
//
//  Created by kaiserdem  on 02.10.2022.
//

import Foundation

class CartViewModel: ObservableObject {
    
    @Published var position = [Position]()
    
    func addPosition(_ position: Position) {
        self.position.append(position)
    }
    
}
