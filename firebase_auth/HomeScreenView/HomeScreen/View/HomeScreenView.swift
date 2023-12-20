//
//  HomeScreenView.swift
//  firebase_auth
//
//  Created by Saiprasad Lokhande on 19/12/23.
//

import SwiftUI

struct HomeScreenView: View {
    @State private var isSignedIn: Bool = false
    var body: some View {
  
        ZStack{
            NavigationStack{
              HomeView(isSignIn: $isSignedIn)
            }
        }.onAppear{
           isSignedIn = AuthenticationManager.shared.isUserSignedIn()
        }
        .fullScreenCover(isPresented: $isSignedIn, content: {
            NavigationStack{
                AuthenticationView(isSignedIn: $isSignedIn)
            }
        })
    }
}

#Preview {
    HomeScreenView()
}
