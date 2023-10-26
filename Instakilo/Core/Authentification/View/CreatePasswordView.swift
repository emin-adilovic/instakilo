//
//  CreatePasswordView.swift
//  Instakilo
//
//  Created by MOP Human on 19. 10. 2023..
//

import SwiftUI

struct CreatePasswordView: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewModel: RegistrationViewModel
    
    
    var body: some View {
            VStack(spacing: 12){
                Text("Create password")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.top)
            
                
                Text("Your password must be at least 6 characters")
                        .font(.footnote)
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 24)
                
                SecureField("Password", text: $viewModel.password)
                    .autocapitalization(.none)
                    .modifier(CustomTextFieldModifier())
                
                NavigationLink{
                    CompleteRegView().navigationBarBackButtonHidden()
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

struct CreatePasswordView_Previews: PreviewProvider {
    static var previews: some View {
        CreatePasswordView()
    }
}
