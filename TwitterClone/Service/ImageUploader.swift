//
//  ImageUploader.swift
//  TwitterClone
//
//  Created by GAMA  on 11/03/2022.
//

import Firebase
import UIKit

struct ImageUploader{
    static func uploadImage(image: UIImage, completion: @escaping(String)-> Void){
        guard let imageData = image.jpegData(compressionQuality: 0.5) else {return}
        let fileName = NSUUID().uuidString
        let ref = Storage.storage().reference(withPath: "/profile_image/\(fileName)")
        
        print("/profile_image/\(fileName)")
        ref.putData(imageData, metadata: nil) { _, error in
            if let  error = error{
                print("DEBUG: Failed\nReason: \(error.localizedDescription)")
                return
            }
            
            print("Upload: Downloading URL...")
            ref.downloadURL { URL, error in
                guard let imageURL = URL?.absoluteString else {return}
                print(imageURL)
                completion(imageURL)
            }
        }
    }
}
