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
            Text("Home View")
                .tabItem{
                    Image(systemName: "house.fill")
                    Text("Home")
                    
                }
            Text("Discover")
                .tabItem{
                    Image(systemName: "globe.fill")
                    Text("Discover")
                    
                }
            Text("Account")
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
