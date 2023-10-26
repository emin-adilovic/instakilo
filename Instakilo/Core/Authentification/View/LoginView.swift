//
//  LoginView.swift
//  Instakilo
//
//  Created by MOP Human on 19. 10. 2023..
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewModel()
    
    var body: some View {
        NavigationStack{
            VStack{
                
                Spacer()
                
                //logo
                Text("Instakilo").font(.largeTitle)
                
                //text fields
                VStack{
                    TextField("Enter your email", text: $viewModel.email)
                        .autocapitalization(.none)
                        .modifier(CustomTextFieldModifier())
                    
                    SecureField("Enter your password", text: $viewModel.password)
                        .modifier(CustomTextFieldModifier())
                }
                
                //buttons
                
                Button{
                    
                }label: {
                    Text("Forgor Password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing,28)
                }.frame(maxWidth: .infinity, alignment: .trailing)
                
                
                Button{
                    Task {
                      try await  viewModel.loginUser()
                  }
                }label: {
                    Text("Log in")
                        .font(.subheadline)
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                        .frame(width: 360,height: 44)
                        .background(Color(.systemBlue))
                        .cornerRadius(8)
                }.padding(.vertical)
                
                HStack{
                    Rectangle().frame(width: (UIScreen.main.bounds.width/2)-40, height: 0.5)
                    Text("OR")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    Rectangle().frame(width: (UIScreen.main.bounds.width/2)-40, height: 0.5)
                }.foregroundColor(.gray)
                
                HStack{
                    Text("F").font(.headline).fontWeight(.bold).foregroundColor(.blue)
                    
                    Text("Continue with Facebook").font(.caption).fontWeight(.semibold).foregroundColor(Color(.systemBlue))
                }.padding(.top, 8)
                
                Spacer()
                
                Divider()
                
                NavigationLink{
                    AddEmailView().navigationBarBackButtonHidden()
                } label: {
                    HStack(spacing: 3){
                        Text("Don't have an account?")
                        
                        Text("Sign Up").fontWeight(.semibold)
                    }.font(.footnote)
                }.padding(.vertical, 16)
                
                
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
