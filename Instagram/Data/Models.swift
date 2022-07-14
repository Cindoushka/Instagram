//
//  Models.swift
//  Instagram
//
//  Created by Cindy Bajoni on 11/07/2022.
//

import Foundation


struct User: Identifiable {
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
    var stories: [Story]
}

struct Story: Identifiable {
    var id = UUID()
    var picture: String
    var name: String
}

struct Publication: Identifiable {
    var id = UUID()
    var pic: String
    var desc: String
    var publishedBy: User
    var likedBy: [User]
    var commentaires: [Commentaire]
    var date: String
}

struct Commentaire: Identifiable {
    var id = UUID()
    var userCom: User
    var com: String
}

func filteredPublis (user: User) -> [Publication] {
    let filteredPubliByUser = publications.filter { publis in
        publis.publishedBy.id == user.id
    }
    
    return filteredPubliByUser
}
