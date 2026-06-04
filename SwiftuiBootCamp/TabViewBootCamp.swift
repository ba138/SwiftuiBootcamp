//
//  TabViewBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 04/06/2026.
//

import SwiftUI

struct TabViewBootCamp: View {
    @State var selectedTab : Int = 1
    var body: some View {

        TabView (selection : $selectedTab){
HomeViewBootCamp()
            .tabItem{
                    Image(systemName: "house.fill")
                    Text("Home")
                    
            }.tag(0)
DiscoverViewBootCamp()
                .tabItem{
                    Image(systemName: "globe.fill")
                    Text("Discover")
                    
                }.tag(1)
            SettingViewBootCamp()
                .tabItem{
                    Image(systemName: "person.fill")
                    Text("Account")
                    
                }.tag(3)
        }
    }
}

#Preview {
    TabViewBootCamp()
}
