//
//  CustomTextFieldModifier.swift
//  Instakilo
//
//  Created by MOP Human on 19. 10. 2023..
//

import SwiftUI

struct CustomTextFieldModifier: ViewModifier{
    func body(content: Content)-> some View {
    content
        .font(.subheadline)
        .padding(12)
        .background(Color(.systemGray6))
        .cornerRadius(10)
        .padding(.horizontal, 24)
        .padding(.top)
        .padding(.top)
    }

}
