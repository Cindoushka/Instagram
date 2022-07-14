//
//  Models.swift
//  Instagram
//
//  Created by Cindy Bajoni on 11/07/2022.
//

import Foundation


struct Users: Identifiable {
    var id = UUID()
    var username: String
    var userbio: String
    var userpic: String
    var userarobas: String
    var isPrivate: Bool
    var isOnline: Bool
    var isCurrentUser: Bool
    var followers: Int
    var follows: Int
    var stories: [Stories]
}

struct Stories: Identifiable {
    var id = UUID()
    var picture: String
    var name: String
}

struct Publications: Identifiable {
    var id = UUID()
    var pic: String
    var desc: String
    var publishedBy: Users
    var likedBy: [Users]
    var commentaires: [Commentaires]
    var date: String
}

struct Commentaires: Identifiable {
    var id = UUID()
    var userCom: Users
    var com: String
}

func filteredPublis (user: Users) -> [Publications] {
    let filteredPubliByUser = publications.filter { publis in
        publis.publishedBy.id == user.id
    }
    
    return filteredPubliByUser
}
