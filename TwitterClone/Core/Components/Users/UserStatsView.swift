//
//  UserStatsView.swift
//  TwitterClone
//
//  Created by GAMA  on 07/03/2022.
//

import SwiftUI

struct UserStatsView: View {
    var body: some View {
        //Following and Followers
        HStack (spacing: 12){
            //Following
            HStack{
                Text("2")
                    .font(.subheadline).bold()
                Text("Following")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            
            //Followers
            HStack{
                Text("4")
                    .font(.subheadline).bold()
                Text("Followers")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
        }
    }
}

struct UserStatsView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatsView()
    }
}
