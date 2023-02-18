//
//  ProfileView.swift
//  PizzaBest
//
//  Created by kaiserdem  on 27.09.2022.
//

import SwiftUI

struct ProfileView: View {
    
    @State var isAvaAlertPresented = false
    @State var isQuiteAlertPresented = false
    @State var isAuthViewtPresented = false

    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            HStack {
                Image("user")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .padding(8)
                    .background(Color("lightGray"))
                    .clipShape(Circle())
                    .onTapGesture {
                        isAvaAlertPresented.toggle()
                    }
                    .confirmationDialog("Where get photo", isPresented: $isAvaAlertPresented) {
                        Button {
                            print("Library")
                        } label: {
                            Text("Is Library")
                        }
                        
                        Button {
                            print("Camera")
                        } label: {
                            Text("Is Camera")
                        }
                        
                    }
                
                VStack(alignment: .leading, spacing: 12) {
                    Text("Степан Бандера!")
                        .bold()
                    
                    Text("+38095434332")
                    
                }
            }
            VStack(alignment: .leading, spacing: 8) {
                Text("Address:")
                    .bold()
                Text("Старый Угринов, территория Галиции и Лодомерии")
            }
            
            List {
               Text("Your order")
            }
            Button {
                isAvaAlertPresented.toggle()
            } label: {
                Text("Exit")
                    .padding()
                    .padding(.horizontal)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(20)
            }.padding()
                .confirmationDialog("Do you want to exit?", isPresented: $isQuiteAlertPresented, titleVisibility: .visible) {
                    Button {
                        isAuthViewtPresented.toggle()
                    } label: {
                        Text("Yes")
                    }
                }
                .fullScreenCover(isPresented: $isAuthViewtPresented, onDismiss: nil) {
                    AuthView()
                }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
