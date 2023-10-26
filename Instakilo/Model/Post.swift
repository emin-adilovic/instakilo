//
//  Post.swift
//  Instakilo
//
//  Created by MOP Human on 20. 10. 2023..
//

import Foundation
import Firebase

struct Post : Identifiable, Hashable, Codable {
    let id: String
    let ownerId: String
    let caption: String
    var likes: Int
    let imageUrl: String
    let timestamp: Timestamp
    var user: User?
}

extension Post {
    static var MOCK_POSTS: [Post] = [
        .init(
            id: NSUUID().uuidString,
            ownerId: NSUUID().uuidString,
            caption: "this is first caption 1",
            likes: 12,
            imageUrl: "Example",
            timestamp: Timestamp(),
            user: User.MOCK_USERS[0]
        ),
        
            .init(
                id: NSUUID().uuidString,
                ownerId: NSUUID().uuidString,
                caption: "this is caption 2",
                likes: 12,
                imageUrl: "Example",
                timestamp: Timestamp(),
                user: User.MOCK_USERS[1]
            ),
            .init(
                id: NSUUID().uuidString,
                ownerId: NSUUID().uuidString,
                caption: "this is 3",
                likes: 12,
                imageUrl: "Example",
                timestamp: Timestamp(),
                user: User.MOCK_USERS[2]
            ),
            .init(
                id: NSUUID().uuidString,
                ownerId: NSUUID().uuidString,
                caption: "this is first caption 1",
                likes: 12,
                imageUrl: "Example",
                timestamp: Timestamp(),
                user: User.MOCK_USERS[0]
            ),
    ]
}
