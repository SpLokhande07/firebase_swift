//
//  AuthWithEmailView.swift
//  firebase_auth
//
//  Created by Saiprasad lokhande on 17/12/23.
//

import SwiftUI

struct AuthWithEmailView: View {
    @State private var showSignInView : Bool = true
    @Binding var isSignedIn : Bool
    var body: some View {
       NavigationView{
           
           
           VStack{
               
               if showSignInView {
                   SignInWithEmailView(showSignInView : $showSignInView, isSignIn: $isSignedIn)
                       .opacity(showSignInView ? 1 : 0)
                
               }
               
               if !showSignInView { SignUpWithEmail(showSignInView : $showSignInView)
                       .opacity(!showSignInView ? 1 : 0)
               }
               

           }.padding()
       }.navigationTitle(showSignInView ?  "Sign In" : "Sign Up")
               
    }
}

#Preview {
    NavigationView{
        AuthWithEmailView(isSignedIn: .constant(true))
}}
