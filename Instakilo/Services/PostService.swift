//
//  PostService.swift
//  Instakilo
//
//  Created by MOP Human on 26. 10. 2023..
//

import Foundation
import Firebase

struct PostService {
    
    private static let postsCollection = Firestore.firestore().collection("posts")
    
    
    static func fetchFeedPosts() async throws -> [Post] {
        let snapshot = try await postsCollection.getDocuments()
        var posts = try snapshot.documents.compactMap({
            try $0.data(as: Post.self)
        })
        
        for i in 0 ..< posts.count {
            let postUser = try await UserService.fetchUser(withUid: posts[i].ownerId)
            posts[i].user = postUser
        }
        return posts
    }
    
    
    static func fetchUserPosts(uid: String) async throws -> [Post] {
        let snapshot = try await postsCollection.whereField("ownerId", isEqualTo: uid).getDocuments()
        
        
        print("snapova je... \(snapshot.count)")
        
        return try snapshot.documents.compactMap({
            try $0.data(as: Post.self)
        })
    }
    
}
