//
//  SignInWithEmail.swift
//  firebase_auth
//
//  Created by Saiprasad lokhande on 17/12/23.
//

import SwiftUI



struct SignInWithEmailView: View {
    
    
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
            
            SignInWithEmailBtn(title: "Sign In")
                .onTapGesture {
                    viewModel.signIn()
                }
            
            HStack{
                NavigationLink(destination:SignUpWithEmail()){
                   Text("Not a user? SignUp").foregroundStyle(Color.blue).padding(.top, 16)
               }
            }
            
        
//        Spacer()
            
        }.padding()
        .navigationTitle("Sign in with Email")
    }}
    
}

#Preview {
    NavigationStack{
    SignInWithEmailView()}
}
