//
//  MainTabBar.swift
//  PizzaBest
//
//  Created by kaiserdem  on 27.09.2022.
//

import SwiftUI

struct MainTabBar: View {
    var body: some View {
        
        TabView {
            CatalogView()
                .tabItem {
                    VStack {
                        Image(systemName: "menucard")
                        Text("Catalog")
                    }
                }
            
            CartView()
                .tabItem {
                    VStack {
                        Image(systemName: "cart")
                        Text("Trash")
                    }
                }
            
            ProfileView()
                .tabItem {
                    VStack {
                        Image(systemName: "person.circle")
                        Text("Profile")
                    }
                }
        }
    }
}

struct MainTabBar_Previews: PreviewProvider {
    static var previews: some View {
        MainTabBar()
    }
}
