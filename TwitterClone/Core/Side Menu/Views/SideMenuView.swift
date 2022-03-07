//
//  SideMenuView.swift
//  TwitterClone
//
//  Created by GAMA  on 07/03/2022.
//


import SwiftUI

struct SideMenuView: View {
    var body: some View {
        VStack (alignment: .leading){
            //Profile Header!
            VStack (alignment: .leading){
                Circle()
                    .frame(width: 54, height: 54)
                    .foregroundColor(Color(.systemBlue))
                //Name + Verified
                HStack{
                    
                    //Name
                    Text("Ghulam Rasool")
                        .font(.title2)
                        .bold()
                    
                    //Verified
                    Image(systemName: "checkmark.seal.fill")
                        .foregroundColor(Color(.systemBlue))
                    
                }
                
                //Username
                Text("@ghulamrasuldev")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                UserStatsView()
                    .padding(.vertical)
            }
            .padding(.horizontal)
            
            //Options Menu
            ForEach(SideMenuViewModel.allCases, id: \.rawValue){options in
                HStack{
                    Image(systemName: options.imageName)
                        .font(.headline)
                        .foregroundColor(.gray)
                    Text(options.title)
                        .font(.subheadline)
                    Spacer()
                }
                .padding(.horizontal)
                .padding(.vertical, 8)
            }
            
            //Spacing
            Spacer()
        }
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
