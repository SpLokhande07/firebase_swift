//
//  SignInWithGoogleModel.swift
//  firebase_auth
//
//  Created by Saiprasad Lokhande on 22/12/23.
//

import Foundation
import FirebaseAuth
import GoogleSignIn


@MainActor
final class SignInWithGoogleModel : ObservableObject{
    @Published var name : String = ""
    @Published var profilePic : String = ""
    @Published var isLoggedIn : Bool = false
    @Published var errorMsg : String = ""
    
    init(){}
    
    func signIn()async throws{
        
        guard let topVC = Utilities.shared.topViewController() else {
            throw URLError(.cannotFindHost)
        }
        
        let gidSignInResult = try await GIDSignIn.sharedInstance.signIn(withPresenting: topVC)
        
        
        guard let idToken: String = gidSignInResult.user.idToken?.tokenString else {
            throw URLError(.badServerResponse)
        }
        
        let accessToken: String = gidSignInResult.user.accessToken.tokenString
        
        let credential = GoogleAuthProvider.credential(withIDToken: idToken, accessToken: accessToken)
        
    }
    
}
  
