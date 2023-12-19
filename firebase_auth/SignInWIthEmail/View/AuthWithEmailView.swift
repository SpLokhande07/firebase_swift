//
//  AuthWithEmailView.swift
//  firebase_auth
//
//  Created by Saiprasad lokhande on 17/12/23.
//

import SwiftUI

struct AuthWithEmailView: View {
    var body: some View {
       NavigationView{
           VStack{
               NavigationLink(destination: SignInWithEmailView()){
                   SignInWithEmailBtn(title: "Sign in With Email").padding(8)
               }
              
                Spacer()
                }
       }.navigationTitle("Authentication")
               
    }
}

#Preview {
    NavigationView{
    AuthWithEmailView()
}}
