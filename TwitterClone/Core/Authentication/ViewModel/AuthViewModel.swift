//
//  AuthViewModel.swift
//  TwitterClone
//
//  Created by GAMA  on 10/03/2022.
//

import SwiftUI
import Firebase

class AuthViewModel: ObservableObject{
    @Published var userSession: FirebaseAuth.User?
    @Published var didUserAuthenticate = false
    
    init (){
        self.userSession = Auth.auth().currentUser
    }
    
    
    func login(email: String, password: String){
        Auth.auth().signIn(withEmail: email, password: password){result, error in
            if let error = error{
                print("Failed to login. \n Reason: \(error.localizedDescription)")
            }
            guard let user = result?.user else {return}
            
            self.userSession = user
            
            print("Logged in successfully!")
        }
    }
    
    func register(email:String, password: String, fullname: String, username: String){
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error{
                print("Failed to register. \n Reason: \(error.localizedDescription)")
                return
            }
            guard let user = result?.user else {
                return
            }
            self.userSession = user
            
            let data = ["email": email,
                        "fullname": fullname,
                        "username": username.lowercased(),
                        "uid": user.uid]
            
            
            Firestore.firestore().collection("users")
                .document(user.uid)
                .setData(data){ _ in
                    self.didUserAuthenticate = true
                    print("Uploaded Data!")
                }
        }
    }
    
    
    func signOut(){
        self.userSession = nil
        try? Auth.auth().signOut()
    }
}
