//
//  CatalogView.swift
//  PizzaBest
//
//  Created by kaiserdem  on 27.09.2022.
//

import SwiftUI

struct CatalogView: View {
    
    let layoutForBest = [GridItem(.adaptive(minimum: screen.width / 0.5))]
    let layoutForPizza = [GridItem(.adaptive(minimum: screen.width / 0.1))]

    
    var body: some View {
       
        ScrollView(.vertical, showsIndicators: false) {
            Section("Best") {
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: layoutForBest, spacing: 16) {
                        ForEach(CatalogViewModel.shared.bestProducts, id: \.id) { item in
                            NavigationLink {
                                let viewModel = ProductDetailViewModel(product: item)
                                
                                ProductDetailView(viewModel: viewModel)
                            } label: {
                                ProductCell(product: item)
                                    .foregroundColor(.black)
                            }
                        }
                    }.padding()
                }
            }
            
            Section("Pizza") {
                ScrollView(.vertical, showsIndicators: false) {
                    LazyVGrid(columns: layoutForPizza) {
                        ForEach(CatalogViewModel.shared.pizza, id: \.id) { item in
                            NavigationLink {
                                
                                let viewModel = ProductDetailViewModel(product: item)
                                
                                ProductDetailView(viewModel: viewModel)
                            } label: {
                                ProductCell(product: item)
                                    .foregroundColor(.black)
                            }
                        }
                    }.padding()
                }
            }
        }.navigationBarTitle("Catalog")
    }
}

struct Catalog_Previews: PreviewProvider {
    static var previews: some View {
        CatalogView()
    }
}
