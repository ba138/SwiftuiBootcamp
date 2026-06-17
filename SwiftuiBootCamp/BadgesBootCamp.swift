//
//  BadgesBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 17/06/2026.
//

import SwiftUI

struct BadgesBootCamp: View {
    var body: some View {
        TabView{
            Color.red
                .tabItem {
                   Image(systemName: "heart.fill")
                    Text("home")
                }
                .badge(1)
                .ignoresSafeArea()

            Color.green
                .tabItem {
                    Image(systemName: "heart.fill")
                     Text("home")
                }
                .ignoresSafeArea()

            Color.cyan
                .tabItem {
                    Image(systemName: "person.fill")
                     Text("Account")
                }
                .ignoresSafeArea()

        }
    }
}

#Preview {
    BadgesBootCamp()
}
