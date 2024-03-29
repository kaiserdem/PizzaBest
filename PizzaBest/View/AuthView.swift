//
//  AuthView.swift
//  PizzaBest
//
//  Created by kaiserdem  on 20.09.2022.
//

import SwiftUI

struct AuthView: View {
    
    @State private var email = ""
    @State private var password = ""
    @State private var isAuth = true
    @State private var confirmPassword = ""
    
    @State private var isTabViewShow = false
    
    var body: some View {
        VStack(spacing: 20) {
            Text(isAuth ? "Authorization": "Registration")
                .padding(isAuth ? 16 : 24)
                .padding(.horizontal, 30)
                .font(.title2.bold())
                .background(Color("whiteAplha"))
                .cornerRadius(isAuth ? 30 : 60)
            
            VStack {
                TextField("Input email", text: $email)
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
                
                if !isAuth {
                    SecureField("Confirm password", text: $confirmPassword)
                        .padding()
                        .background(Color("whiteAplha"))
                        .cornerRadius(12)
                        .padding(8)
                        .padding(.horizontal, 12)
                }
                
                Button {
                    if isAuth {
                        print("auth user from backend")
                        isTabViewShow.toggle()
                    } else {
                        print("Registration")
                        self.email = ""
                        self.password = ""
                        self.confirmPassword = ""
                        self.isAuth.toggle()
                    }
                    
                } label: {
                    Text(isAuth ? "Enter" : "Create account")
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
                    isAuth.toggle()
                } label: {
                    Text(isAuth ? "Not with us yet?" : "Already have account")
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
            .padding(isAuth ? 30 : 12)

        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Image("background")
                .ignoresSafeArea()
                .blur(radius: isAuth ? 0 : 4))
            .animation(Animation.easeInOut(duration: 0.1), value: isAuth)
            .fullScreenCover(isPresented: $isTabViewShow) {
                MainTabBar()
            }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView()
    }
}
