//
//  TweetsRowView.swift
//  TwitterClone
//
//  Created by GAMA  on 04/03/2022.
//

import SwiftUI

struct TweetsRowView: View {
    var body: some View {
        
        //Profile Image + User Info + Tweet + Action Buttons
        VStack(alignment: .leading){
            //Profile Image + User Info + Tweet
            HStack(alignment: .top, spacing: 12){
                Circle()
                    .frame(width: 64, height: 56)
                    .foregroundColor(Color(.systemBlue))
                //User Info + Tweet
                VStack(alignment: .leading, spacing: 4){
                    //User Info
                    HStack{
                        //Name
                        Text("Ghulam Rasool").font(.subheadline).bold()
                        //Username
                        Text("@ghulamrasuldev").font(.caption).foregroundColor(.gray)
                        //saperator
                        Circle()
                            .frame(width: 3, height: 3)
                            .foregroundColor(.gray)
                        //time
                        Text("1w").font(.caption).foregroundColor(.gray)
                        
                    }
                    //Tweet Caption
                    Text("One of the reason the rich get richer and poor get poorer and the middle class struggle in debt is that the subject of money is taught at home, not at school")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                }
            }
            
            // Action Buttons
            HStack{
                //Comment button
                Button{
                    //Action goes here...
                } label:{
                    Image(systemName: "bubble.left")
                        .font(.subheadline)
                }
                
                Spacer()
                
                //Retweet Button
                Button{
                    //Action goes here...
                } label:{
                    Image(systemName: "arrow.2.squarepath")
                        .font(.subheadline)
                }
                
                Spacer()
                
                //Like Button
                Button{
                    //Action goes here...
                } label:{
                    Image(systemName: "heart")
                        .font(.subheadline)
                }
                
                Spacer()
                
                //Bookmark Button
                Button{
                    //Action goes here...
                } label:{
                    Image(systemName: "bookmark")
                        .font(.subheadline)
                }
            }
            .padding()
            .foregroundColor(.gray)
            
            Divider()
        }
        .padding()
    }
}

struct TweetsRowView_Previews: PreviewProvider {
    static var previews: some View {
        TweetsRowView()
    }
}
