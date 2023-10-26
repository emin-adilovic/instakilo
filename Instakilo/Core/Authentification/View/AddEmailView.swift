//
//  AddEmailView.swift
//  Instakilo
//
//  Created by MOP Human on 19. 10. 2023..
//

import SwiftUI

struct AddEmailView: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewModel: RegistrationViewModel 
    
    
    var body: some View {
            VStack(spacing: 12){
                Text("Add your email")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.top)
            
                
                Text("You will use this email to sign in to your account")
                        .font(.footnote)
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 24)
                
                TextField("Enter your email", text: $viewModel.email)
                    .autocapitalization(.none)
                    .modifier(CustomTextFieldModifier())
                
                
                NavigationLink{
                    CreateUsernameView().navigationBarBackButtonHidden()
                }label: {
                    Text("Next")
                        .font(.subheadline)
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                        .frame(width: 360,height: 44)
                        .background(Color(.systemBlue))
                        .cornerRadius(8)
                }.padding(.vertical)
                
                
                Spacer()
                
            }
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    Image(systemName: "chevron.left")
                        .imageScale(.large)
                        .onTapGesture {
                            dismiss()
                        }
                }
            }
        
    }
}

struct AddEmailView_Previews: PreviewProvider {
    static var previews: some View {
        AddEmailView()
    }
}
