//
//  SignUpWithEmail.swift
//  firebase_auth
//
//  Created by Saiprasad lokhande on 17/12/23.
//

import SwiftUI

struct SignUpWithEmail: View {
    
    @StateObject private var viewModel = SignInWithEmailModel()
    
    @Binding var showSignInView : Bool
    
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
                        Task{
                            do{
                                
                                try await viewModel.signUp()
                            }
                            
                            catch{
                                print("\(error)")
                            }
                        }
                      
                    }
                
                Text("Already a User? SignIn").foregroundStyle(Color.blue).padding(.top, 16)
                 .onTapGesture {
                     withAnimation(Animation.easeInOut(duration: 2), {
                         showSignInView.toggle()
                     })
                 }
                
            }
        }
    }
}

#Preview {
    SignUpWithEmail(showSignInView: .constant(false))
}
