//
//  ExploreView.swift
//  TwitterClone
//
//  Created by GAMA  on 04/03/2022.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationView{
            VStack{
                ScrollView{
                    LazyVStack{
                        ForEach(1 ... 50, id: \.self){_ in
                            NavigationLink{
                                ProfileView()
                            } label:{
                                UserRowView()
                            }
                        }
                    }
                }
            }
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }

    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ExploreView()
                .previewInterfaceOrientation(.portrait)
        }
    }
}
