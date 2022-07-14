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
            
            ForEach(publications) { pictures in
                NavigationLink {
                    PublicationView(publi: pictures)
                } label: {
                Image(pictures.pic)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 126, height: 126, alignment: .center)
                    .clipped()
            }
            }
            }
    }
}

struct PublisProfile_Previews: PreviewProvider {
    static var previews: some View {
        PublisProfile()
    }
}
