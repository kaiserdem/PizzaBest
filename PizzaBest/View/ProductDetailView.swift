//
//  ProductDetailView.swift
//  PizzaBest
//
//  Created by kaiserdem  on 27.09.2022.
//

import SwiftUI

struct ProductDetailView: View {
    
    var viewModel: ProductDetailViewModel
    
    @State var size = "Small"
    // @State var size = Sizes.small
    @State var count = 1

    
    var body: some View {
        
        VStack {
            VStack(alignment: .leading) {
                Image("pizzaPh")
                    .resizable()
                    .frame(maxWidth: .infinity, maxHeight: 270)
                HStack {
                    Text("\(viewModel.product.title)")
                        .font(.title2.bold())
                    Spacer()
                    Text("\(viewModel.getPrice(size: self.size))$")
                        .font(.title2)

                }.padding(.horizontal)
                
                Text("\(viewModel.product.descript)")
                    .padding(.horizontal)
                    .padding(.vertical, 4)
                
                HStack {
                    Stepper("Count", value: $count, in: 1...10)
                    Text("\(self.count)")
                        .padding(.leading, 32)
                }.padding(.horizontal)
                
                Picker("Size Pizza", selection: $size) {
                    ForEach(viewModel.sizes, id: \.self) { item in
                        Text(item)
                    }
                }.pickerStyle(.segmented)
                    .padding()
                
            }
            Button {
                print("To Cart")
            } label: {
                Text("Add To Cart!")
                    .padding()
                    .padding(.horizontal, 60)
                    .foregroundColor(.black)
                    .font(.title3.bold())
                    .background(LinearGradient(colors: [Color("yellow"), Color("orange")], startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(20)

            }
            Spacer()
        }
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(viewModel: ProductDetailViewModel(product:         Product(id: "1", title: "Margaritta", imageUrl: "not found", price: 450, descript: "the best pizza")))
    }
}
