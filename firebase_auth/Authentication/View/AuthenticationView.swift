//
//  AuthenticationView.swift
//  firebase_auth
//
//  Created by Saiprasad lokhande on 17/12/23.
//

import SwiftUI

struct AuthenticationView: View {
    @Binding var isSignedIn : Bool
    var body: some View {
        NavigationStack{
            
            VStack{
                AuthWithEmailView(isSignedIn: $isSignedIn)
                
            }
        }
    }
}

#Preview {
//    NavigationStack{
    AuthenticationView(isSignedIn: .constant(true))
//}
}
