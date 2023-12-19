//
//  SignUpWithEmail.swift
//  firebase_auth
//
//  Created by Saiprasad lokhande on 17/12/23.
//

import SwiftUI

struct SignUpWithEmail: View {
    var body: some View {
        NavigationLink{
            Text("Hello")
        } label: {
            Text("Sign In With Email")
                .font(.headline)
                .foregroundStyle(.white)
                .frame(  maxWidth : .infinity, minHeight: 50)
            
                .background(Color.blue)
                .cornerRadius(10)
        }
    }
}

#Preview {
        SignUpWithEmail()
}
