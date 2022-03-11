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
    @EnvironmentObject  var viewModel: AuthViewModel
    
    var body: some View {
        //Parent Controller
        VStack{
            //Header
            AuthHeader(titleUp: "Hello.", titleDown: "Welcome Back")
            
            VStack (spacing: 40){
                CustomInputFieldRowView(imageName: "envelope",
                                        placeholder: "Email",
                                        text: $email)
                
                CustomInputFieldRowView(imageName: "lock",
                                        placeholder: "Password",
                                        isSecureField: true,
                                        text: $password)
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
                viewModel.login(email: email, password: password)
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
            
            
            HStack{
                Text("Don't have account?")
                    .font(.footnote)
                    .foregroundColor(Color(.systemBlue))
                
                NavigationLink{
                    RegistrationView()
                        .navigationBarHidden(true)
                }label: {
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
