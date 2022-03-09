//
//  ContentView.swift
//  TwitterClone
//
//  Created by GAMA  on 04/03/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var showMenu = false
    @State private var value: CGFloat = -300
    @State private var color: Color = Color.clear
    
    
    var body: some View {
        ZStack(alignment: .topLeading){
            MainTabView()
                .navigationBarHidden(showMenu)
            
            if showMenu{
                withAnimation(.easeInOut){
                    ZStack{
                        Color.black
                            .opacity(0.1)
                    }.onTapGesture {
                        withAnimation(.easeInOut){
                            showMenu = false
                            value = -300
                            color = Color.clear
                        }
                    }
                    .ignoresSafeArea()
                }
            }
            SideMenuView()
                .frame(width: 300)
                .offset(x: value, y: 0)
                .background(color)
        }
        .navigationTitle("Home")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading){
                Button{
                    withAnimation(.easeInOut){
                        showMenu.toggle()
                        if (value == -300){
                            value = 0
                            color = Color.white
                        }else{
                            value = -300
                            color = Color.clear
                        }
                    }
                } label: {
                    Circle()
                        .frame(width: 24, height: 24)
                }
            }
        }
        .onAppear{
            showMenu = false
            value = -300
            color = Color.clear
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
