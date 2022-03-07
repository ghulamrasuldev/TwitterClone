//
//  ProfileView.swift
//  TwitterClone
//
//  Created by GAMA  on 04/03/2022.
//

import SwiftUI

struct ProfileView: View {
    @State private var selectedFilter: TweetFilterViewModel = .tweets
    @Environment(\.presentationMode) var mode
    @Namespace var animation
    var body: some View {
        
        //Complete Profile
        VStack (alignment: .leading){
            //Banner + Image + Back Button
            headerView
            
            //Profile action Buttons
            profileActionButtons
            
            //Profile Name + Bio + Location + Website
            profileInfo
            
            //Tweets
            HStack{
                ForEach(TweetFilterViewModel.allCases, id: \.rawValue){ filter in
                    VStack{
                        Text(filter.title)
                            .font(.subheadline)
                            .fontWeight(selectedFilter == filter ? .semibold: .regular)
                            .foregroundColor(selectedFilter == filter ? .black: .gray)
                        
                        if selectedFilter == filter{
                            Capsule()
                                .fill(Color(.systemBlue))
                                .frame(height: 4)
                                .matchedGeometryEffect(id: "filter", in: animation)
                        }
                        else{
                            Capsule()
                                .fill(Color(.clear))
                                .frame(height: 4)
                        }
                    }
                    .onTapGesture {
                        withAnimation(.easeInOut){
                            self.selectedFilter = filter
                        }
                    }
                }
            }
            .padding(.vertical)
            .overlay(Divider().offset(x: 0, y: 16))
            
            //List of Tweets
            
            ScrollView{
                LazyVStack{
                    ForEach(1 ... 50, id: \.self){_ in
                        TweetsRowView()
                    }
                }
            }


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
                    mode.wrappedValue.dismiss()
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
            UserStatsView()
        }
        .padding(.horizontal)
    }
}
