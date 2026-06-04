//
//  TabViewBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 04/06/2026.
//

import SwiftUI

struct TabViewBootCamp: View {
    var body: some View {

        TabView {
HomeViewBootCamp()
            .tabItem{
                    Image(systemName: "house.fill")
                    Text("Home")
                    
                }
DiscoverViewBootCamp()
                .tabItem{
                    Image(systemName: "globe.fill")
                    Text("Discover")
                    
                }
            SettingViewBootCamp()
                .tabItem{
                    Image(systemName: "person.fill")
                    Text("Account")
                    
                }
        }
    }
}

#Preview {
    TabViewBootCamp()
}
