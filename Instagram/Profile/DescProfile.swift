//
//  DescProfile.swift
//  Instagram
//
//  Created by Cindy Bajoni on 11/07/2022.
//

import SwiftUI

struct DescProfile: View {
    var body: some View {
        

        HStack {
            VStack(alignment: .leading, spacing: 6) {
                Text(users[0].username)
                    .fontWeight(.bold)
                    .font(.system(size:14))

                Text(users[0].userbio)
                    .font(.system(size:14))
                
                Button(action:{
                    
                }, label: {
                    Text("Voir la traduction")
                        .foregroundColor(.black)
                        .fontWeight(.semibold)
                        .font(.system(size: 14))
                    
                })
                
            }
            Spacer()
        }
        .padding(.leading, 20)
    }
}

struct DescProfile_Previews: PreviewProvider {
    static var previews: some View {
        DescProfile()
    }
}
