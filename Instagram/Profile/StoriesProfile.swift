//
//  StoriesProfile.swift
//  Instagram
//
//  Created by Cindy Bajoni on 11/07/2022.
//

import SwiftUI

struct StoriesProfile: View {
    var body: some View {
        
            
            ScrollView(.horizontal, showsIndicators: false){
                
                HStack(spacing: 18){
                ForEach(users[0].stories) { story in
                    
                    VStack {
                    Image(story.picture)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 56, height: 56)
                        .clipped()
                        .clipShape(Circle())
                        .padding(4)
                        .background(
                        Capsule()
                            .stroke(Color.gray)
                        )
                        
                        Text(story.name)
                            .font(.system(size:13))
                    }

                }
                    
                    VStack {
                    Image(systemName: "plus")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 16, height: 16)
                        .clipped()
                        .clipShape(Circle())
                        .padding(21)
                        .background(
                        Capsule()
                            .stroke(Color.gray)
                        )
                        
                        Text("Nouveau")
                            .font(.system(size:13))
                    }
            }
                .padding(.leading, 10)
        }
            .padding(.bottom, 16)
    }
}

struct StoriesProfile_Previews: PreviewProvider {
    static var previews: some View {
        StoriesProfile()
    }
}
