//
//  CreateUsernameView.swift
//  Instakilo
//
//  Created by MOP Human on 19. 10. 2023..
//

import SwiftUI

struct CreateUsernameView: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewModel: RegistrationViewModel
    
    
    var body: some View {
            VStack(spacing: 12){
                Text("Create username")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.top)
            
                
                Text("Pick a username for your new account")
                        .font(.footnote)
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 24)
                
                TextField("Username", text: $viewModel.username)
                    .autocapitalization(.none)
                    .modifier(CustomTextFieldModifier())
                
                
                NavigationLink{
                    CreatePasswordView().navigationBarBackButtonHidden()
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

struct CreateUsernameView_Previews: PreviewProvider {
    static var previews: some View {
        CreateUsernameView()
    }
}
