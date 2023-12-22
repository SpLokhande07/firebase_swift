//
//  GoogleSignIn.swift
//  firebase_auth
//
//  Created by Saiprasad Lokhande on 21/12/23.
//

import SwiftUI
import GoogleSignInSwift

struct GoogleSignInView: View {
    var body: some View {
       
            
            
            GoogleSignInButton(style: GoogleSignInButtonStyle.icon, action: {})
                .clipShape(Circle())
                .shadow(radius: 10)
                .onTapGesture {
                    
                }
        
        
    }
}

#Preview {
    GoogleSignInView()
}
