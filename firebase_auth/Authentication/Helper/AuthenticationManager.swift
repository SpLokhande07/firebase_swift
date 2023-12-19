//
//  AuthenticationManager.swift
//  firebase_auth
//
//  Created by Saiprasad lokhande on 18/12/23.
//

import Foundation
import FirebaseAuth

struct AuthDataResultModel{
    let uid : String
    let email : String?
    let photoUrl : String?
    var errorMessage : String?
    init(user : User){
            self.uid = user.uid
            self.email = user.email
            self.photoUrl = user.photoURL?.absoluteString
    }
    
    init(error: String){
        self.uid = ""
        self.email = ""
        self.photoUrl = ""
        self.errorMessage = error
    }
    
    
}

 

final class AuthenticationManager {
    static let shared = AuthenticationManager()
    
    private init(){}
    
    func isUserSignedIn() -> Bool{
        
        return Auth.auth().currentUser != nil
        
    }
    
    func errorHandler(error : AuthErrorCode) -> AuthDataResultModel{
        var model = AuthDataResultModel(error: "")
        model.errorMessage = error.localizedDescription
        return model
    }
}
