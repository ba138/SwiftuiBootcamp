//
//  TabViewBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 04/06/2026.
//

import SwiftUI

struct TabViewBootCamp: View {
    @State var selectedTab : Int = 0
    var body: some View {

        TabView (selection : $selectedTab){
HomeViewBootCamp(slectedTab: $selectedTab)
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
                    
                }.tag(2)
        }
    }
}

#Preview {
    TabViewBootCamp()
}
