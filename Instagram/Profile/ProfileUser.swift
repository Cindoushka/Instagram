//
//  ProfileUser.swift
//  Instagram
//
//  Created by Cindy Bajoni on 11/07/2022.
//

import SwiftUI

struct ProfileUser: View {
    var body: some View {
        
        VStack{
            TopMenuProfile()
            
            ScrollView(.vertical, showsIndicators: false){
                HStack{
                    
                    UserPicProfile()
                    
                    Spacer()
                    
                    DataProfile()
                }
                .padding(.horizontal)
                
                DescProfile()
                
                
                ModificationProfile()
                
                StoriesProfile()
                
                ButtonsProfile()
                
            }
        }
    }
}

struct ProfileUser_Previews: PreviewProvider {
    static var previews: some View {
        ProfileUser()
    }
}
