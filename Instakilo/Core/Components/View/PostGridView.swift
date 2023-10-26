//
//  PostGridView.swift
//  Instakilo
//
//  Created by MOP Human on 20. 10. 2023..
//

import SwiftUI
import Kingfisher

struct PostGridView: View {
    @StateObject var viewModel: PostGridViewModel
    
    init(user: User){
        self._viewModel = StateObject(wrappedValue: PostGridViewModel(user: user))
    }
    
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 2),
        .init(.flexible(), spacing: 2),
        .init(.flexible(), spacing: 2)]
    
    
    private let imageDimension: CGFloat = (UIScreen.main.bounds.width / 3) - 1
    
    var body: some View {
        LazyVGrid(columns: gridItems,spacing: 2) {
            
            ForEach(viewModel.posts){post in
                KFImage(URL(string: post.imageUrl))
                    .resizable()
                    .scaledToFill()
                    .frame(width: imageDimension, height:  imageDimension)
                    .clipped()
            }
            
        }
    }
}

struct PostGridView_Previews: PreviewProvider {
    static var previews: some View {
        PostGridView(user: User.MOCK_USERS[0])
    }
}
