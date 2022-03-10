//
//  AuthHeader.swift
//  TwitterClone
//
//  Created by GAMA  on 10/03/2022.
//

import SwiftUI

struct AuthHeader: View {
    var titleUp = "Get Started."
    var titleDown = "Create your Account"
    var body: some View {
        VStack(alignment: .leading){
            HStack{Spacer()}
            
             Text(titleUp)
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            Text(titleDown)
                .font(.largeTitle)
                .fontWeight(.semibold)
        }
        .frame(height: 280)
        .padding(.leading)
        .background(Color(.systemBlue))
        .foregroundColor(.white)
        .clipShape(RoundedShape(corners: [.bottomRight]))
    }
}

struct AuthHeader_Previews: PreviewProvider {
    static var previews: some View {
        AuthHeader()
    }
}
