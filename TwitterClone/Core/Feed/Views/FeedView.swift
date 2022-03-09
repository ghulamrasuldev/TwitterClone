//
//  FeedView.swift
//  TwitterClone
//
//  Created by GAMA  on 04/03/2022.
//

import SwiftUI

struct FeedView: View {
    @State var showNewTweetView = false
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            ScrollView{
                LazyVStack{
                    ForEach(1 ... 50, id: \.self){_ in
                        TweetsRowView()
                    }
                }
            }
            Button{
                showNewTweetView.toggle()
            } label: {
                Image(systemName: "pencil")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 28, height: 28)
                    .padding()
            }
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(Circle()) 
            .padding()
            .fullScreenCover(isPresented: $showNewTweetView){
                NewTweetView()
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
