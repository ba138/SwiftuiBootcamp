//
//  NavigationViewBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 26/05/2026.
//

import SwiftUI

struct NavigationViewBootCamp: View {
    var body: some View {
        NavigationView {
            ScrollView {
                NavigationLink("Sheet") {
                    SheetsBootCamp()
                }
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text("Hello, World!")
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            .navigationTitle("Title")
//            .navigationBarTitleDisplayMode(.inline)
            
            .font(.largeTitle)




        }
    }
}

#Preview {
    NavigationViewBootCamp()
}
