//
//  RegistrationView.swift
//  TwitterClone
//
//  Created by GAMA  on 09/03/2022.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var username: String = ""
    @State private var fullname: String = ""
    var body: some View {
        //Parent Controller
        VStack{
            //
            VStack(alignment: .leading){
                HStack{Spacer()}
                
                 Text("Get Started.")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
                Text("Create your Account")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
            }
            .frame(height: 280)
            .padding(.leading)
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(RoundedShape(corners: [.bottomRight]))
            
            VStack (spacing: 40){
                CustomInputFieldRowView(imageName: "envelope", placeholder: "Email", text: $email)
                CustomInputFieldRowView(imageName: "person", placeholder: "Username", text: $username)
                CustomInputFieldRowView(imageName: "person", placeholder: "Full name", text: $fullname)
                CustomInputFieldRowView(imageName: "lock", placeholder: "Password", text: $password)
            }
            .padding(.horizontal, 32)
            .padding(.top, 44)
            
            
            Button{
                print("hello...")
            } label: {
                Text("Sign in")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 340, height: 50)
                    .background(Color(.systemBlue))
                    .clipShape(Capsule())
                    .padding()
            }
            .shadow(color: .gray.opacity(0.30), radius: 10, x: 0, y: 0)
            
            Spacer()
            
            NavigationLink{
                LoginUI()
                    .navigationBarHidden(true)
            }label: {
                HStack{
                    Text("Already have account?")
                        .font(.footnote)
                        .foregroundColor(Color(.systemBlue))
                    
                    Text("Sign In")
                        .font(.footnote)
                        .fontWeight(.bold)
                        .foregroundColor(Color(.systemBlue))
                }
            }
            .padding(.vertical, 32)
            .navigationBarHidden(true)
        }
        .ignoresSafeArea()
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
