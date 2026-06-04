//
//  HomeViewBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 04/06/2026.
//

import SwiftUI

struct HomeViewBootCamp: View {
    var body: some View {
        ZStack {
            Color.red
                .ignoresSafeArea()
            Text("Home View")
                .font(.largeTitle)
                .foregroundColor(.white)
        }
    }
}

#Preview {
    HomeViewBootCamp()
}
