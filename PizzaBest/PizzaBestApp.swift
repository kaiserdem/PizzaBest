//
//  PizzaBestApp.swift
//  PizzaBest
//
//  Created by kaiserdem  on 20.09.2022.
//

import SwiftUI
import Firebase

let screen = UIScreen.main.bounds

@main
struct PizzaBestApp: App {
    var body: some Scene {
        WindowGroup {
            AuthView()
        }
    }
    
    class AppDelegate: NSObject, UIApplicationDelegate {
        
        func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
            FirebaseApp.configure()
            return true
        }
    }
}
