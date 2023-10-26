//
//  LoginViewModel.swift
//  Instakilo
//
//  Created by MOP Human on 23. 10. 2023..
//

import Foundation

class LoginViewModel : ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    func loginUser() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
    
}
