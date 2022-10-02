//
//  ProductDetailViewModel.swift
//  PizzaBest
//
//  Created by kaiserdem  on 01.10.2022.
//

import Foundation

class ProductDetailViewModel: ObservableObject {
    
    // @Published слушаем, наблюдаем
    @Published var product: Product
    @Published var sizes = ["Small", "Medium", "Big"]
    @Published var count = 0
    
    init(product: Product) {
        self.product = product
    }
    
    func getPrice(size: String) -> Int {
        switch size {
        case "Small":
            return product.price
        case "Medium":
            return Int(Double(product.price) * 1.25)
        case "Big":
            return Int(Double(product.price) * 1.5)
        default:
            return 0
        }
    }
    
}

/*
 enum Sizes: CaseIterable {
    case small, medium, big
     
     var text: String {
         switch self {
         case .small: return "Small"
         case .medium: return "Medium"
         case .big: return "Big"
         }
     }
     
 }

 class ProductDetailViewModel: ObservableObject {
     
     // @Published слушаем, наблюдаем
     @Published var product: Product
     @Published var sizes = Sizes.medium
     
     init(product: Product) {
         self.product = product
     }
     
     func getPrice(size: Sizes) -> Int {
         switch size {
         case .small:
             return product.price
         case .medium:
             return Int(Double(product.price) * 1.25)
         case .big:
             return Int(Double(product.price) * 1.5)
         }
     }
     
 }

 */
