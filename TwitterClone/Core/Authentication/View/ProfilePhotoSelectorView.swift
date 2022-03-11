//
//  ProfilePhotoSelectorView.swift
//  TwitterClone
//
//  Created by GAMA  on 11/03/2022.
//

import SwiftUI

struct ProfilePhotoSelectorView: View {
    
    @State private var showImagePciker = false
    @State private var selectedImage: UIImage?
    @State private var profileImage: Image?
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        VStack{
            AuthHeader(titleUp: "Set up account.", titleDown: "Add a profile photo")
            Button{
                showImagePciker = true
            } label: {
                if let profileImage = profileImage {
                    profileImage
                        .resizable()
                        .modifier(ProfileImageModifier())
                }else{
                    Image(systemName: "plus.circle")
                        .resizable()
                        .renderingMode(.template)
                        .modifier(ProfileImageModifier())
                }
            }
            .padding(.top, 42)
            .sheet(isPresented: $showImagePciker, onDismiss: loadImage){
                ImagePicker(selectedImage: $selectedImage)
            }
            
            if let selectedImage = selectedImage{
                Button{
                    viewModel.uplaodProfileImage(selectedImage)
                } label: {
                    Text("Finish")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 340, height: 50)
                        .background(Color(.systemBlue))
                        .clipShape(Capsule())
                        .padding()
                }
                .shadow(color: .gray.opacity(0.30), radius: 10, x: 0, y: 0)
            }
            
            
            Spacer()
        }
        .ignoresSafeArea()
    }
    
    func loadImage (){
        guard let selectedImage = selectedImage else {return}
        profileImage = Image(uiImage: selectedImage)
    }
}


private struct ProfileImageModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .foregroundColor(Color(.systemBlue))
            .scaledToFill()
            .frame(width: 180, height: 180)
            .clipShape(Circle())
    }
}
struct ProfilePhotoSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePhotoSelectorView()
    }
}
