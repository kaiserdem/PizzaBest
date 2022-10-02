//
//  CartView.swift
//  PizzaBest
//
//  Created by kaiserdem  on 27.09.2022.
//

import SwiftUI

struct CartView: View {
    
    @StateObject var viewModel: CartViewModel
    
    var body: some View {
        VStack {
            List(viewModel.position) { position in
                PositionCell(position: position)
                    .swipeActions {
                        Button {
                            viewModel.position.removeAll { pos in
                                pos.id == position.id
                            }
                        } label: {
                            Text("Remove")
                        }.tint(.red)
                    }
            }
            .listStyle(.plain)
            .navigationTitle("Cart")
            
            HStack {
                Text("All:")
                    .fontWeight(.bold)
                Spacer()
                Text("\(self.viewModel.cost)$")
                    .fontWeight(.bold)
            }.padding()
            
            HStack(spacing: 24) {
                Button {
                    print("cancel")
                } label: {
                    Text("Cancel")
                        .font(.body)
                        .fontWeight(.bold)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.red)
                        .cornerRadius(24)

                }

                Button {
                    print("Buy")
                } label: {
                    Text("Buy")
                        .font(.body)
                        .fontWeight(.bold)
                        .padding()
                        .foregroundColor(.white)
                        //.frame(maxWidth: .infinity)
                        .background(Color.green)
                        .cornerRadius(24)
                }
            }.padding()
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView(viewModel: CartViewModel.shared)
    }
}
