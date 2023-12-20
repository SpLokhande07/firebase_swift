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
        try await signInUserUsingEmailAndPassword(email: email, password: password)
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
                try await createUserUsingEmailAndPassword(email: email, password: password)
                print("Success")
//                print(returnedUserData)
//                
//            }
//            catch{
//                print("Error: \(error)")
//            }
//        }
        
    }
    
    
    
    
    @discardableResult
    func createUserUsingEmailAndPassword(email:String, password: String) async throws -> AuthDataResultModel{
        let authDataResult = try await Auth.auth().createUser(withEmail: email, password: password)
        return AuthDataResultModel(user : authDataResult.user)
        
    }
    
    @discardableResult
    func signInUserUsingEmailAndPassword(email:String, password: String) async throws -> AuthDataResultModel{
        let authDataResult = try await Auth.auth().signIn(withEmail: email, password: password)
        return AuthDataResultModel(user: authDataResult.user)
    }
    
    func signOut()throws{
        guard Auth.auth().currentUser != nil else{
            print ("No User Logged In")
            return
        }
        
        do{
            try Auth.auth().signOut()
        }catch{
            print("Error\(error)")
            
        }
        
    }
}
