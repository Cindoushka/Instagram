//
//  ModificationProfile.swift
//  Instagram
//
//  Created by Cindy Bajoni on 11/07/2022.
//

import SwiftUI

struct ModificationProfile: View {
    var body: some View {
        
        HStack{
            
            NavigationLink(destination: {
                
            }, label: {
                Text("Modifier profil")
                    .foregroundColor(.black)
                    .fontWeight(.semibold)
                    .font(.system(size:15))
                    .padding(.vertical, 8)
                    .padding(.horizontal, 100)
                    .background(Color("lightgray"))
                    .cornerRadius(8)
                
            })
            
            NavigationLink(destination: {
                
            }, label: {
                Image("add")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 15)
                    .padding(8)
                    .background(Color("lightgray"))
                    .cornerRadius(8)
                
            })
        }
        .padding(.vertical)
    }
}

struct ModificationProfile_Previews: PreviewProvider {
    static var previews: some View {
        ModificationProfile()
    }
}
