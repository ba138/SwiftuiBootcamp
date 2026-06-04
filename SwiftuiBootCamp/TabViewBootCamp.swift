//
//  TabViewBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 04/06/2026.
//

import SwiftUI

struct TabViewBootCamp: View {
    @State var selectedTab : Int = 0
    let  icons : [String] = [
        "person.fill",
        "heart.fill",
        "globe.fill",
        "house.fill",
    ]
    var body: some View {
        TabView{
            ForEach(icons,id: \.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
            }
//            RoundedRectangle(cornerRadius: 25)
//                .foregroundColor(.red)
//                
//            RoundedRectangle(cornerRadius: 25)
//                .foregroundColor(.green)
//
//
//            RoundedRectangle(cornerRadius: 25)
//                .foregroundColor(.cyan)


        }
        .frame(height: 400)
        .padding()
        .tabViewStyle(PageTabViewStyle())
//        TabView (selection : $selectedTab){
//HomeViewBootCamp(slectedTab: $selectedTab)
//            .tabItem{
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                    
//            }.tag(0)
//DiscoverViewBootCamp()
//                .tabItem{
//                    Image(systemName: "globe.fill")
//                    Text("Discover")
//                    
//                }.tag(1)
//            SettingViewBootCamp()
//                .tabItem{
//                    Image(systemName: "person.fill")
//                    Text("Account")
//                    
//                }.tag(2)
//        }
    }
}

#Preview {
    TabViewBootCamp()
}
