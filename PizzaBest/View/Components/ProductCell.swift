//
//  ProductCell.swift
//  PizzaBest
//
//  Created by kaiserdem  on 27.09.2022.
//

import SwiftUI

struct ProductCell: View {
    
    var product: Product
    
    var body: some View {
        
        VStack(spacing: 2) {
            Image("pizzaPh")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(minWidth: screen.width * 0.45)
                .clipped()
                //.cornerRadius(16)
            
            HStack {
                Text(product.title)
                    .font(.custom("AvenirNext-regular", size: 12))
                Spacer()
                Text("\(product.price)$")
                    .font(.custom("AvenirNext-bold", size: 12))
            }
            .padding(.horizontal, 6)
            .padding(.bottom, 6)

        }.frame(width: screen.width * 0.55, height: screen.width * 0.55)
            .background(.white)
            .cornerRadius(16)
            .shadow(radius: 4)
    }
}

struct ProdactCell_Previews: PreviewProvider {
    static var previews: some View {
        ProductCell(product: Product(id: "1", title: "Margaritta", imageUrl: "not found", price: 450, descript: "the best pizza"))
    }
}
