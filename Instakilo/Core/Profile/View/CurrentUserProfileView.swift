//
//  CurrentUserProfileView.swift
//  Instakilo
//
//  Created by MOP Human on 20. 10. 2023..
//

import SwiftUI

struct CurrentUserProfileView: View {
    
    let user: User
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 2),
        .init(.flexible(), spacing: 2),
        .init(.flexible(), spacing: 2)]
    
    var posts: [Post] {
        return Post.MOCK_POSTS.filter({ $0.user?.username == user.username})
    }

    
    var body: some View {
       NavigationStack{
            ScrollView{
                //header
                ProfileHeaderView(user: user)
                
                //posts grid view
                PostGridView(user: user)
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button{
                        
                        AuthService.shared.signOut()
                        
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundColor(.black)
                    }
                }
                
            }
        }
    }
}

struct CurrentUserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentUserProfileView(user: User.MOCK_USERS[0])
    }
}
