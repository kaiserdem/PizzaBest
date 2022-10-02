//
//  CartView.swift
//  PizzaBest
//
//  Created by kaiserdem  on 27.09.2022.
//

import SwiftUI

struct CartView: View {
    
    var viewModel: CartViewModel
    
    var body: some View {
        Text("Cart!")
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView(viewModel: CartViewModel())
    }
}
