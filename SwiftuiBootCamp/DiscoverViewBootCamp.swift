//
//  DiscoverViewBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 04/06/2026.
//

import SwiftUI

struct DiscoverViewBootCamp: View {
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
            Text("Discover")
                .font(.largeTitle)
                .foregroundColor(.white)
        }
    }
}

#Preview {
    DiscoverViewBootCamp()
}
