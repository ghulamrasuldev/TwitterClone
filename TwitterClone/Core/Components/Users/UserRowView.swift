//
//  UserRowView.swift
//  TwitterClone
//
//  Created by GAMA  on 07/03/2022.
//

import SwiftUI

struct UserRowView: View {
    var body: some View {
        HStack (spacing: 12){
            Circle()
                .frame(width: 48, height: 48)
                .foregroundColor(Color(.systemBlue))
            VStack (alignment: .leading, spacing: 4){
                Text("Ghulam Rasool").font(.subheadline).bold().foregroundColor(.black)
                //Username
                Text("@ghulamrasuldev").font(.caption).foregroundColor(.gray)
            }
            Spacer()
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}

struct UserRowView_Previews: PreviewProvider {
    static var previews: some View {
        UserRowView()
    }
}
