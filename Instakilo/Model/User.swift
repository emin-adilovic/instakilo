//
//  User.swift
//  Instakilo
//
//  Created by MOP Human on 20. 10. 2023..
//

import Foundation
import Firebase


struct User: Identifiable, Hashable, Codable{
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
    
    var isCurrentUser: Bool {
        guard let currentUid = Auth.auth().currentUser?.uid else {return false}
        return currentUid == id
    }
}

extension User{
    static var MOCK_USERS: [User] = [
            .init(id: NSUUID().uuidString, username: "mercedes", profileImageUrl: nil, fullname: "CLA AMG", bio: "very very very very good bio", email: "cla@mercedes.com"),
        
            .init(id: NSUUID().uuidString, username: "mercedesA", profileImageUrl: nil, fullname: "A AMG", bio: "very very very very good bio", email: "aclass@mercedes.com"),
        
            .init(id: NSUUID().uuidString, username: "mercedesB", profileImageUrl: nil, fullname: nil, bio: nil, email: "bclass@mercedes.com"),
        
            .init(id: NSUUID().uuidString, username: "mercedesC", profileImageUrl: nil, fullname: "C AMG", bio: "very very very very good bio", email: "cclass@mercedes.com"),
        
            .init(id: NSUUID().uuidString, username: "Gmercedes", profileImageUrl: nil, fullname: "G vagon", bio: "very very very very good bio", email: "gclass@mercedes.com")
    
    ]
}
