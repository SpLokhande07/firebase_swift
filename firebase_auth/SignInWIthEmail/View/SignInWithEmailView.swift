//
//  SignInWithEmail.swift
//  firebase_auth
//
//  Created by Saiprasad lokhande on 17/12/23.
//

import SwiftUI



struct SignInWithEmailView: View {
    
    
    @StateObject private var viewModel = SignInWithEmailModel()
 
    @Binding var showSignInView : Bool
    @Binding var isSignIn : Bool
    
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
                .onTapGesture (){
                    Task{
                    
                        do {
                            try await viewModel.signIn()
                        }catch{
                            print("\(error)")
                        }
                    }
                }
            
            HStack{
//                NavigationLink(destination:SignUpWithEmail()){
                    Text("Not a user? SignUp").foregroundStyle(Color.blue).padding(.top, 16).onTapGesture {
                        withAnimation(Animation.easeInOut(duration: 2), {
                            showSignInView.toggle()
                        })
                    }
//               }
            }
            
        
//        Spacer()
            
        }
        
    }}
    
}

#Preview {
    NavigationStack{
        SignInWithEmailView(showSignInView: .constant(true),isSignIn: .constant(true))}
}
