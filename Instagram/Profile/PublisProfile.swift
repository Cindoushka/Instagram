//
//  PublisProfile.swift
//  Instagram
//
//  Created by Cindy Bajoni on 11/07/2022.
//

import SwiftUI

struct PublisProfile: View {
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        
        LazyVGrid(columns: columns, alignment: .center, spacing: 1) {
            
            ForEach(users[0].publis, id: \.self) { pictures in
                
                Image(pictures)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 126, height: 126, alignment: .center)
                    .clipped()
            }
            }
    }
}

struct PublisProfile_Previews: PreviewProvider {
    static var previews: some View {
        PublisProfile()
    }
}
