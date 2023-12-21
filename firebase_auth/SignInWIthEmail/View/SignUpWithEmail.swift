//
//  SignUpWithEmail.swift
//  firebase_auth
//
//  Created by Saiprasad lokhande on 17/12/23.
//

import SwiftUI

struct SignUpWithEmail: View {
    
    @Environment(\.presentationMode) var presentation
    
    @StateObject private var viewModel = SignInWithEmailModel()
    var body: some View {
        NavigationStack{
            VStack{
                TextField("Email", text: $viewModel.email)
                    .padding()
                    .background(Color.gray.opacity(0.4)
                    ) .cornerRadius(10)
                
                SecureField(
                    "Password", text: $viewModel.password
                ).padding()
                    .background(Color.gray.opacity(0.4)
                                
                    ) .cornerRadius(10)
                
                SignInWithEmailBtn(title: "Sign Up")
                    .onTapGesture {
                        viewModel.signUp()
                    }
                
                Text("Already a User? SignIn").foregroundStyle(Color.blue).padding(.top, 16)
                 .onTapGesture {
                     presentation.wrappedValue.dismiss()
                 }
                
            }.padding()
        }.navigationTitle("Sign Up")
    }
}

#Preview {
        SignUpWithEmail()
}
