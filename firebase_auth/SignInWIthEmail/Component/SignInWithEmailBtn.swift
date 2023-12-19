//
//  SignInWithEmailBtn.swift
//  firebase_auth
//
//  Created by Saiprasad lokhande on 17/12/23.
//

import SwiftUI

struct SignInWithEmailBtn: View {
    
  
    var title : String
    
    var body: some View {
      
            Text("\(title)")
                .font(.headline)
                .foregroundStyle(.white)
                .frame(  maxWidth : .infinity, minHeight: 50)
            
                .background(Color.blue)
                .cornerRadius(10)
       
    }
}

#Preview {
    SignInWithEmailBtn(title:"Sign in")
}
