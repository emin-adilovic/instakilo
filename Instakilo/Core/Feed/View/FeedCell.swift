//
//  FeedCell.swift
//  Instakilo
//
//  Created by MOP Human on 19. 10. 2023..
//

import SwiftUI
import Kingfisher

struct FeedCell: View {
    let post: Post
    var body: some View {
        VStack(alignment: .leading){
            //image + username
            HStack{
                if let user = post.user{
                    
                    CircularProfileImageView(user: user, size: .xSmall)
                        
                        
                    Text(user.username)
                            .font(.footnote)
                            .fontWeight(.semibold)
                }
                Spacer()
            
            }.padding(.leading, 8)
            
            //post image
            
                KFImage(URL(string: post.imageUrl))
                    .resizable()
                    .scaledToFill()
                    .frame( width: UIScreen.main.bounds.width, height:400)
                    .clipShape(Rectangle())
                    .clipped()
            
            //action button
            
            
            
            HStack(spacing: 16){
                
                Button{
                    print("Like post")
                } label: {
                    Image(systemName: "heart")
                        .imageScale(.large)
                        .foregroundColor(.black)
                }
                
                Button{
                    print("Like post")
                } label: {
                    Image(systemName: "bubble.right")
                        .imageScale(.large)
                        .foregroundColor(.black)
                }
                
                Button{
                    print("Like post")
                } label: {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                        .foregroundColor(.black)
                }
                Spacer()
                
            }
            .padding(.leading, 8)
            .padding(.top, 4)
            
            
            //likes label
            Text("\(post.likes) likes")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top, 1)
            //caption label
            
            HStack(spacing: 10){
                Text(post.user?.username ?? "")
                    .fontWeight(.semibold)
                Text(post.caption)
            }.frame(maxWidth: .infinity, alignment: .leading)
                .font(.footnote)
                .padding(.leading, 10)
                .padding(.top, 1)
            
            Text("6h ago")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top, 1)
                .foregroundColor(.gray)
                
        }
    }
}

struct FeedCell_Previews: PreviewProvider {
    static var previews: some View {
        FeedCell(post: Post.MOCK_POSTS[0])
    }
}
