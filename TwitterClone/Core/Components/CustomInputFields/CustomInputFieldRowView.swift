//
//  CustomInputFieldRowView.swift
//  TwitterClone
//
//  Created by GAMA  on 09/03/2022.
//

import SwiftUI

struct CustomInputFieldRowView: View {
    let imageName: String
    let placeholder: String
    @Binding var text: String
    
    var body: some View {
        VStack{
            HStack{
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 15, height: 15)
                    .foregroundColor(Color(.darkGray))
                
                TextField(placeholder, text: $text)
            }
            Divider()
                .foregroundColor(Color(.darkGray))
        }
    }
}

struct CustomInputFieldRowView_Previews: PreviewProvider {
    static var previews: some View {
        CustomInputFieldRowView(imageName: "envelope", placeholder: "Email", text: .constant(""))
    }
}
