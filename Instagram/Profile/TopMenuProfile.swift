//
//  TopMenuProfile.swift
//  Instagram
//
//  Created by Cindy Bajoni on 11/07/2022.
//

import SwiftUI

struct TopMenuProfile: View {
    var body: some View {
        
        
        HStack(spacing: 4) {
            
            Image("lock")
                .resizable()
                .scaledToFit()
                .frame(height: 15)
            
            Text(users[0].userarobas)
                .fontWeight(.bold)
                .font(.system(size: 24))
            
            Image(systemName: "chevron.down")
                .foregroundColor(.gray)
            
            Spacer()
            
            Image("plus")
                .resizable()
                .scaledToFit()
                .frame(height: 26)
            
            Spacer().frame(width: 20)
            Image("menu")
                .resizable()
                .scaledToFit()
                .frame(height: 32)
            
        }
        .padding(.horizontal)
    }
}

struct TopMenuProfile_Previews: PreviewProvider {
    static var previews: some View {
        TopMenuProfile()
    }
}
