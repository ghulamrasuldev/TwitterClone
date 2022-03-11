//
//  ProfilePhotoSelectorView.swift
//  TwitterClone
//
//  Created by GAMA  on 11/03/2022.
//

import SwiftUI

struct ProfilePhotoSelectorView: View {
    var body: some View {
        VStack{
            AuthHeader(titleUp: "Create your account.", titleDown: "Add a profile photo")
            Button{
                
            } label: {
                Image(systemName: "plus.circle")
                    .resizable()
                    .renderingMode(.template)
                    .scaledToFill()
                    .frame(width: 180, height: 180)
                    .padding(.top, 42)
            }
            
            
            
            Spacer()
            
            
        }
        .ignoresSafeArea()
    }
}

struct ProfilePhotoSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePhotoSelectorView()
    }
}
