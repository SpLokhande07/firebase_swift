//
//  SignInWithEmailModel.swift
//  firebase_auth
//
//  Created by Saiprasad lokhande on 17/12/23.
//

import Foundation
import FirebaseAuth

@MainActor
class SignInWithEmailModel : ObservableObject{
    
    @Published var email = ""
    @Published var password = ""
    
    func signIn() async throws{
        guard !email.isEmpty, !password.isEmpty else{
            print ("No Email or password found")
            return
        }
        
//        Task {
//            do{
//                let returnedUserData = 
        try await AuthenticationManager.shared.signInUserUsingEmailAndPassword(email: email, password: password)
//                print("Success")
//                print(returnedUserData)
                
//            }
//            catch{
//                print("Error: \(error)")
//            }
//        }
        
    }
    
    
    func signUp() async throws{
        guard !email.isEmpty, !password.isEmpty else{
            print ("No Email or password found")
            return
        }
        
//        Task {
//            do{
//                let returnedUserData = 
        try await AuthenticationManager.shared.createUserUsingEmailAndPassword(email: email, password: password)
                print("Success")
//                print(returnedUserData)
//                
//            }
//            catch{
//                print("Error: \(error)")
//            }
//        }
        
    }
    
    
    
  
   
}
