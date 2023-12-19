//
//  SignInWithEmailModel.swift
//  firebase_auth
//
//  Created by Saiprasad lokhande on 17/12/23.
//

import Foundation

@MainActor
class SignInWithEmailModel : ObservableObject{
    
    @Published var email = ""
    @Published var password = ""
    
    func signIn(){
        guard !email.isEmpty, !password.isEmpty else{
            print ("No Email or password found")
            return
        }
        
        Task {
            do{
                let returnedUserData = try await AuthenticationManager.shared.createUser(email: email, password: password)
                print("Success")
                print(returnedUserData)
                
            }
            catch{
                print("Error: \(error)")
            }
        }
        
   
        
    }
    
    
    
}
