//
//  HomeView.swift
//  firebase_auth
//
//  Created by Saiprasad lokhande on 20/12/23.
//

import SwiftUI

struct HomeView: View {
    
    
    @Binding var isSignIn : Bool
    var body: some View {
        List{
            Button("Sign Out"){
                
                Task{
                    do{
                        try AuthenticationManager.shared.signOut()
                    isSignIn = false
                    }catch{
                        print("Error while signing out \(error)")
                    }
                }
            }
        }
        .navigationBarTitle("Home")
    }
}

#Preview {
    HomeView(isSignIn: .constant(true))
}
