//
//  User.swift
//  TwitterClone
//
//  Created by GAMA  on 11/03/2022.
//

import FirebaseFirestoreSwift

struct User: Identifiable, Decodable{
    @DocumentID var id: String?
    let username: String
    let fullname: String
    let email: String
    let imagePath: String
}
