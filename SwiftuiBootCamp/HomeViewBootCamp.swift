//
//  HomeViewBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 04/06/2026.
//

import SwiftUI

struct HomeViewBootCamp: View {
    @Binding var slectedTab : Int
    var body: some View {
        ZStack {
            Color.red
                .ignoresSafeArea()
            VStack {
                Text("Home View")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                Button {
                    slectedTab = 2
                } label: {
                    Text("Go to profile".capitalized)
                        .padding()
                        .background()
                        .cornerRadius(10)
                }

            }
            
        }
    }
}

//#Preview {
//    @Binding var slectedTab : Int
//
//    HomeViewBootCamp()
//}
