//
//  PublicationView.swift
//  Instagram
//
//  Created by Cindy Bajoni on 14/07/2022.
//

import SwiftUI

struct PublicationView: View {
    
    var publi: Publication
    
    var width: CGFloat = UIScreen.main.bounds.width
    
    @Environment(\.dismiss) var dismiss


    var body: some View {

        
        VStack(spacing: 10) {
            
            HStack {
                
                Button{
                        dismiss()
                } label: {
                    Image(systemName: "chevron.backward")
                        .font(.system(size: 24))
                        .foregroundColor(.black)
                }
                
                Spacer()
                    VStack {
                        
                        Text(publi.publishedBy.userarobas.uppercased())
                            .foregroundColor(.gray)
                            .fontWeight(.semibold)
                            .font(.system(size:13))
                        
                        Text("Publications")
                            .fontWeight(.bold)
                            .font(.system(size:16))

                        
                    }
                Spacer()
                
            }
            .padding(.horizontal,6)
            Divider()
            
            HStack{
                Image(publi.publishedBy.userpic)
                    .resizable()
                    .scaledToFill()
                    .frame(width:36, height: 36)
                    .clipShape(Circle())
                    .clipped()
                
                Text(publi.publishedBy.userarobas)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Image("more")
                    .resizable()
                    .scaledToFill()
                    .frame(width:18, height: 18)
                    .clipped()
                    
            }
            .padding(.horizontal)
            
            Image(publi.pic)
                .resizable()
                .scaledToFill()
                .frame(width: width, height: width)
                .clipped()
            
            HStack(spacing: 20) {
                
                Image("heart")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 26)
                
                Image("chat")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 26)
                
                Image("send")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 26)
                
                Spacer()
                
                Image("bookmark")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 26)
                
            }
            .padding(.horizontal)
            
            HStack{
                
            Text(publi.publishedBy.userarobas)
                .fontWeight(.semibold)
                .font(.system(size:16))
            +
            Text("  ")
            +
                Text(publi.desc)
                .font(.system(size:16))
                

                Spacer()
            }
            .padding(.horizontal, 8)
            
            
            
            HStack {
                Text(publi.date)
                    .font(.system(size:14))
                .foregroundColor(.gray)
                
                Spacer()
            }
            .padding(.horizontal)
            
            Spacer()
                .navigationBarHidden(true)
        }


    }
}

struct PublicationView_Previews: PreviewProvider {
    static var previews: some View {
        PublicationView(publi: publications[9])
    }
}
