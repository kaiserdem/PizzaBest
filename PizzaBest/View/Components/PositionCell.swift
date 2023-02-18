//
//  PositionCell.swift
//  PizzaBest
//
//  Created by kaiserdem  on 02.10.2022.
//

import SwiftUI

struct PositionCell: View {
    
    let position: Position
    
    var body: some View {
        HStack {
            Text(position.product.title)
                .fontWeight(.bold)
            Spacer()
            Text("\(position.count) count")
            Text("\(position.cost)$")
                .frame(width: 85, alignment: .trailing)

        }.padding(.horizontal)
    }
}

struct PositionCell_Previews: PreviewProvider {
    static var previews: some View {
        PositionCell(position: Position(id: UUID().uuidString,
                                        product: Product(id: UUID().uuidString, title: "Margaritta", imageUrl: "not found", price: 450, descript: "the best pizza"), count: 3))
    }
}
