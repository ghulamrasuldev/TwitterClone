//
//  ProfileView.swift
//  TwitterClone
//
//  Created by GAMA  on 04/03/2022.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        
        //Complete Profile
        VStack (alignment: .leading){
            //Banner + Image + Back Button
            headerView
            
            //Profile action Buttons
            profileActionButtons
            
            //Profile Name + Bio + Location + Website
            profileInfo


            Spacer()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

extension ProfileView{
    var headerView: some View {
        //Banner + Image + Back Button
        ZStack(alignment: .bottomLeading){
            Color(.systemBlue)
                .ignoresSafeArea()
            
            VStack{
                Button{
                    //Action goes here
                } label: {
                    Image(systemName: "arrow.left")
                        .resizable()
                        .frame(width: 20, height: 16)
                        .offset(x: 2, y: 0)
                        .foregroundColor(.white)
                }
                Circle()
                    .frame(width: 72, height: 72)
                    .offset(x: 16, y:24)
            }
        }
        .frame(height: 108)
    }
    
    //Profile action Buttons
    var profileActionButtons: some View{
        HStack (spacing: 12){
            Spacer()
            
            Button{
                
            } label: {
                Image(systemName: "bell.badge")
                    .font(.title3)
                    .padding(6)
                    .foregroundColor(.black)
                    .overlay(Circle().stroke(Color.gray, lineWidth: 0.75))
            }
            
            Button{
                
            } label: {
                Text("Edit Profile")
                    .font(.subheadline)
                    .bold()
                    .foregroundColor(.black)
                    .frame(width: 120, height: 32)
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.gray, lineWidth: 0.75))
            }
        }
        .padding(.trailing)
    }
    
    //Profile Name + Bio + Location + Website
    var profileInfo : some View{
        VStack (alignment: .leading, spacing: 4){
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
            
            //Bio
            Text("I’m a Student with a passion for Android along with Machine Learning and Food.")
                .padding(.vertical)
                .font(.subheadline)
            
            //Location + Link
            HStack (spacing: 12){
                
                //Location
                HStack{
                    Image(systemName: "mappin.and.ellipse")
                        .foregroundColor(.gray)
                    Text("Lahore, Pakistan")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                
                //Link
                HStack{
                    Image(systemName: "link")
                        .foregroundColor(.gray)
                    Text("www.ghulamrasuldev.com")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
            
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
        .padding(.horizontal)
    }
}
