//
//  ContentView.swift
//  PizzaBest
//
//  Created by kaiserdem  on 20.09.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Authorization")
                .padding()
                .padding(.horizontal, 30)
                .font(.title2.bold())
                .background(Color("whiteAplha"))
                .cornerRadius(35)
            
            VStack {
                TextField("Input text", text: $email)
                    .padding()
                    .background(Color("whiteAplha"))
                    .cornerRadius(12)
                    .padding(8)
                    .padding(.horizontal, 12)
                
                SecureField("Input password", text: $password)
                    .padding()
                    .background(Color("whiteAplha"))
                    .cornerRadius(12)
                    .padding(8)
                    .padding(.horizontal, 12)
                
                Button {
                    print("auth")
                } label: {
                    Text("Enter")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(LinearGradient(colors: [Color("yellow"), Color("orange")], startPoint: .leading, endPoint: .trailing))
                        .cornerRadius(12)
                        .padding(8)
                        .padding(.horizontal, 12)
                        .font(.title3.bold())
                        .foregroundColor(Color("darkBrown"))
                        
                }
                
                Button {
                    print("Not with us yet")
                } label: {
                    Text("Not with us yet?")
                        .padding(.horizontal)
                        .frame(maxWidth: .infinity)
                        .cornerRadius(12)
                        .padding(8)
                        .padding(.horizontal, 12)
                        .font(.title3.bold())
                        .foregroundColor(Color("darkBrown"))
                        
                }
            }
            .padding()
            .padding(.top, 16)
            .background(Color("whiteAplha"))
            .cornerRadius(24)
            .padding(30)

        }.frame(maxWidth: .infinity, maxHeight: .infinity)
         .background(Image("background").ignoresSafeArea())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
