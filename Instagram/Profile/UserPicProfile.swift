//
//  UserPicProfile.swift
//  Instagram
//
//  Created by Cindy Bajoni on 11/07/2022.
//

import SwiftUI

struct UserPicProfile: View {
    var body: some View {
        
        ZStack(alignment: .bottomTrailing) {
            Image(users[0].userpic)
                .resizable()
                .scaledToFill()
                .clipped()
                .clipShape(Circle())
                .frame(width: 90, height: 90, alignment: .center)
                .padding(2)
            
            Image(systemName: "plus.circle.fill")
                .foregroundColor(.blue)
                .font(.system(size:20))
                .padding(1)
                .background(.white)
                .clipShape(Circle())
        }
            
        }
    }
    
    struct UserPicProfile_Previews: PreviewProvider {
        static var previews: some View {
            UserPicProfile()
        }
    }
