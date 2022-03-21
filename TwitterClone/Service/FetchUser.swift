//
//  FetchUser.swift
//  TwitterClone
//
//  Created by GAMA  on 11/03/2022.
//

import Firebase

struct FetchUser{
    func fetchUser(withUid uid: String, completeion: @escaping(User)-> Void){
        print("Fetch user...")
        Firestore.firestore()
            .collection("users")
            .document(uid)
            .getDocument { snapshot, _ in
                guard let snapshot = snapshot else {return}
                guard let user = try? snapshot.data(as: User.self) else {return}
                completeion(user)
        }
    }
}
