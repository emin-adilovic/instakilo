//
//  UserService.swift
//  Instakilo
//
//  Created by MOP Human on 25. 10. 2023..
//

import Foundation
import Firebase

struct UserService {
   
   static func fetchAllUsers() async throws -> [User] {
       
       // first way
       
     //  var users = [User]()
       
     //   let snapshot = try await Firestore.firestore().collection("users").getDocuments()
     //   let documents = snapshot.documents
     //   for doc in documents {
     //       print(doc.data())
     //       guard let user = try?  doc.data(as: User.self) else {return users}
     //       users.append(user)
     //   }
     //
     //   return users
       
    // better way
       
       let snapshot = try await Firestore.firestore().collection("users").getDocuments()
       return snapshot.documents.compactMap({try? $0.data(as: User.self)})
    }
    
    @MainActor
    static func fetchUser(withUid: String) async throws -> User {
        let snapshot = try await Firestore.firestore().collection("users").document(withUid).getDocument()
        return try snapshot.data(as: User.self)
    }
    
}
