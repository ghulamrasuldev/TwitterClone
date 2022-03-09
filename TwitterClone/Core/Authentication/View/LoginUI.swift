//
//  LoginUI.swift
//  TwitterClone
//
//  Created by GAMA  on 09/03/2022.
//

import SwiftUI

struct LoginUI: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    var body: some View {
        //Parent Controller
        VStack{
            //
            VStack(alignment: .leading){
                HStack{Spacer()}
                
                 Text("Hello.")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
                Text("Welcome Back")
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
                CustomInputFieldRowView(imageName: "lock", placeholder: "Password", text: $password)
            }
            .padding(.horizontal, 32)
            .padding(.top, 44)
            
            HStack{
                
                Spacer()
                
                NavigationLink{
                    Text("hello")
                }label: {
                    Text("Forgot password?")
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(Color(.systemBlue))
                        .padding(.trailing, 24)
                }
            }
            .padding()
            
            
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
                RegistrationView()
                    .navigationBarHidden(true)
            }label: {
                HStack{
                    Text("Don't have account?")
                        .font(.footnote)
                        .foregroundColor(Color(.systemBlue))
                    
                    Text("Sign Up")
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

struct LoginUI_Previews: PreviewProvider {
    static var previews: some View {
        LoginUI()
    }
}
