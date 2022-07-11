//
//  DataProfile.swift
//  Instagram
//
//  Created by Cindy Bajoni on 11/07/2022.
//

import SwiftUI

struct DataProfile: View {
    var body: some View {
        
        HStack(spacing: 12) {
            
            VStack {
                Text("\(users[0].publis.count)")
                    .fontWeight(.semibold)
                    .font(.system(size:17))
                
                Text("Publications")
                    .fontWeight(.light)
                    .font(.system(size:12.5))

            }
            
            VStack {
                Text("\(users[0].followers)")
                    .fontWeight(.semibold)
                    .font(.system(size:17))

                Text("Abonnés")
                    .fontWeight(.light)
                    .font(.system(size:12.5))

            }
            
            VStack {
                Text("\(users[0].follows)")
                    .fontWeight(.semibold)
                    .font(.system(size:17))

                Text("Abonnements")
                    .fontWeight(.light)
                    .font(.system(size:12.5))

            }
            
        }
    }
}

struct DataProfile_Previews: PreviewProvider {
    static var previews: some View {
        DataProfile()
    }
}
