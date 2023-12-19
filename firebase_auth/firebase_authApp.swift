//
//  firebase_authApp.swift
//  firebase_auth
//
//  Created by Saiprasad lokhande on 17/12/23.
//

import SwiftUI
import Firebase

@main
struct firebase_authApp: App {

    init(){
        FirebaseApp.configure()
        print("Configured Fireabse")

    }
    var body: some Scene {
        WindowGroup {
            NavigationStack{
                AuthWithEmailView()
        }
        }
    }
}

//class AppDelegate: NSObject, UIApplicationDelegate {
//  func application(_ application: UIApplication,
//                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
//    FirebaseApp.configure()
//      print("Configured Firebase")
//
//    return true
//  }
//}
