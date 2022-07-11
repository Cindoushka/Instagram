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
    var publis: [String]
    var stories: [Stories]
}

struct Stories: Identifiable {
    var id = UUID()
    var picture: String
    var name: String
}
