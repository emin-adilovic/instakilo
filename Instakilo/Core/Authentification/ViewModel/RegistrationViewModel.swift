//
//  RegistrationViewModel.swift
//  Instakilo
//
//  Created by MOP Human on 23. 10. 2023..
//

import Foundation


class RegistrationViewModel : ObservableObject {
    @Published var username = ""
    @Published var email = ""
    @Published var password = ""
    
    func createUser() async throws {
       try await AuthService.shared.createUser(email: email, password: password, username: username)
        
        username = ""
        email = ""
        password = ""
    }
    
}
