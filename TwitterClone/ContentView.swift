//
//  ContentView.swift
//  TwitterClone
//
//  Created by GAMA  on 04/03/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView{
            LazyVStack{
                ForEach(1 ... 50, id: \.self){_ in
                     Text("Ghulam Rasool")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}