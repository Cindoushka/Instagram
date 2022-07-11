//
//  ContentView.swift
//  Instagram
//
//  Created by Cindy Bajoni on 11/07/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Text("hello")
                .tabItem {
                    Label("", systemImage: "house")
                }
            
            Text("bonjou")
                .tabItem {
                    Label("", systemImage: "magnifyingglass")
                }

            Text("ciao")
                .tabItem {
                    Label("", systemImage: "play.square")
                }
            Text("holà")
                .tabItem {
                    Label("", systemImage: "bag")
                }
            
            ProfileUser()
                .tabItem {
                    Label("", systemImage: "person.circle.fill")
                }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
