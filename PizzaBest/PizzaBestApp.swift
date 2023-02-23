//
//  PizzaBestApp.swift
//  PizzaBest
//
//  Created by kaiserdem  on 20.09.2022.
//

import SwiftUI
import Firebase
import FirebaseAuth

let screen = UIScreen.main.bounds

@main
struct PizzaBestApp: App {
    
    @UIApplicationDelegateAdaptor private var appDeledate: AppDelegate
    
    var body: some Scene {
        WindowGroup {
            AuthView()
        }
    }
    
    class AppDelegate: NSObject, UIApplicationDelegate {
        
        func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
            FirebaseApp.configure()
            print("didFinishLaunchingWithOptions")
            return true
        }
    }
}
