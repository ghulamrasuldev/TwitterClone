//
//  NewTweetView.swift
//  TwitterClone
//
//  Created by GAMA  on 09/03/2022.
//

import SwiftUI

struct NewTweetView: View {
    @State private var caption = ""
    var body: some View {
        VStack{
            HStack{
                Button{
                    print("dismiss!")
                }label: {
                    Text("Cancel")
                }
                
                Spacer()
                
                Button{
                    print("dismiss!")
                }label: {
                    Text("Tweet")
                        .padding(.horizontal, 24)
                        .padding(.vertical, 8)
                        .foregroundColor(.white)
                        .background(Color(.systemBlue))
                        .clipShape(Capsule())
                }
            }
            .padding()
            
            HStack (alignment: .top){
                Circle()
                    .frame(width: 64, height: 64)
                TextAreaView("Hello Ghulam!", text: $caption)
            }
            .padding()
        }
    }
}

struct NewTweetView_Previews: PreviewProvider {
    static var previews: some View {
        NewTweetView()
    }
}
