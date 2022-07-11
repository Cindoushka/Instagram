//
//  ButtonsProfile.swift
//  Instagram
//
//  Created by Cindy Bajoni on 11/07/2022.
//

import SwiftUI

enum ViewButton {
    case grid
    case reels
    case play
    case identify
}

struct ButtonsProfile: View {
    
    
    
    @State var selectedTab: ViewButton = .grid
    
    @State var currentTab = "Grid"
    
    @State var tabBarOffset: CGFloat = 0
    
    @Namespace var animation
    
    var body: some View {
        
        VStack(alignment: .center, spacing: 0){
                HStack(spacing: 60){
                    
                    TabButton(title: "grid", currentTab: $currentTab, animation: animation, selectedTab: $selectedTab, buttonName: .grid)
                    
                    TabButton(title: "video", currentTab: $currentTab, animation: animation, selectedTab: $selectedTab, buttonName: .reels)
                    
                    TabButton(title: "play", currentTab: $currentTab, animation: animation, selectedTab: $selectedTab, buttonName: .play)
                    
                    TabButton(title: "follower", currentTab: $currentTab, animation: animation, selectedTab: $selectedTab, buttonName: .identify)
                }
                .padding(.horizontal, 30)
            
            Divider()
        }
        
        
        .background(Color.white)
        .offset(y: tabBarOffset < 90 ? -tabBarOffset + 90 : 0)
        .overlay(
            
            GeometryReader { reader -> Color in
                
                let minY = reader.frame(in: .global).minY
                
                
                DispatchQueue.main.async {
                    
                    self.tabBarOffset = minY
                }
                
                return Color.clear
                
            }
            
                .frame(width: 0, height: 0)
            
            
            ,alignment: .top
        )
        .zIndex(1)
        
        VStack {
            switch selectedTab {
            case .grid:
                PublisProfile()
            case .reels:
                Text("reels")
            case .play:
                Text("play")
            case .identify:
                Text("identify")
                
            }
            
        }
        .padding(.top, -12)
        .zIndex(0)
    }
}

struct ButtonsProfile_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsProfile()
    }
}

struct TabButton: View {
    
    var title: String
    @Binding var currentTab: String
    var animation: Namespace.ID
    @Binding var selectedTab: ViewButton
    var buttonName: ViewButton
    
    var body: some View {
        
        Button(action: {
            withAnimation{
                currentTab = title
            }
            selectedTab = buttonName
            
        }, label: {
            
            LazyVStack(spacing: 12){
                Image(title)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 20)
                
                if currentTab == title{
                    
                    Capsule()
                        .fill(Color.black)
                        .frame(width: 92, height: 1.2)
                        .matchedGeometryEffect(id: "TAB", in: animation)
                    
                    
                } else {
                    Capsule()
                        .fill(Color.clear)
                        .frame(height: 1.2)
                }
                
            }
        })
    }
}


