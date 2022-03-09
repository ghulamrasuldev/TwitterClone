//
//  SideMenuOptionRowView.swift
//  TwitterClone
//
//  Created by GAMA  on 09/03/2022.
//

import SwiftUI

struct SideMenuOptionRowView: View {
    let option: SideMenuViewModel
    var body: some View {
        HStack{
            Image(systemName: option.imageName)
                .font(.headline)
                .foregroundColor(.gray)
            Text(option.title)
                .font(.subheadline)
                .foregroundColor(.black)
            Spacer()
        }
        .padding(.horizontal)
        .padding(.vertical, 8)
    }
}

struct SideMenuOptionRowView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuOptionRowView(option: .profile)
    }
}
