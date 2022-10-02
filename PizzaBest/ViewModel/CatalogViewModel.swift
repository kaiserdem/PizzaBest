//
//  CatalogViewModel.swift
//  PizzaBest
//
//  Created by kaiserdem  on 27.09.2022.
//

import Foundation

class CatalogViewModel: ObservableObject {
    
    static let shared = CatalogViewModel()
    
    var bestProducts = [
        Product(id: "1", title: "Margaritta", imageUrl: "not found", price: 450, descript: "the best eat"),
        Product(id: "3", title: "CANADA DRY", imageUrl: "not found", price: 100, descript: "the best drink"),
        Product(id: "2", title: "Havai", imageUrl: "not found", price: 550, descript: "the best eat"),
        Product(id: "1", title: "COCA-COLA", imageUrl: "not found", price: 50, descript: "the best drink"),
        Product(id: "4", title: "Gurme", imageUrl: "not found", price: 600, descript: "the best eat"),
        Product(id: "5", title: "SQUIRT", imageUrl: "not found", price: 175, descript: "the best drink")
    ]
    
    var pizza = [
        Product(id: "1", title: "Margaritta", imageUrl: "not found", price: 450, descript: "the best pizza"),
        Product(id: "2", title: "Havai", imageUrl: "not found", price: 550, descript: "the best pizza"),
        Product(id: "3", title: "Paperoni", imageUrl: "not found", price: 550, descript: "the best pizza"),
        Product(id: "4", title: "Gurme", imageUrl: "not found", price: 600, descript: "the best pizza"),
        Product(id: "5", title: "Diadlo", imageUrl: "not found", price: 650, descript: "the best pizza")
    ]
    
    var drink = [
        Product(id: "1", title: "COCA-COLA", imageUrl: "not found", price: 50, descript: "the best drink"),
        Product(id: "2", title: "SPRITE", imageUrl: "not found", price: 150, descript: "the best drink"),
        Product(id: "3", title: "CANADA DRY", imageUrl: "not found", price: 100, descript: "the best drink"),
        Product(id: "4", title: "Gurme", imageUrl: "not found", price: 200, descript: "the best drink"),
        Product(id: "5", title: "SQUIRT", imageUrl: "not found", price: 175, descript: "the best drink")
    ]
}
