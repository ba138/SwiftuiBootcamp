//
//  NavigationStackBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 19/06/2026.
//

import SwiftUI

struct NavigationStackBootCamp: View {
    var body: some View {
        NavigationStack{
            NavigationLink {
                Text("Screen 2")
            } label: {
            Text("Click Me")
            }
            .navigationTitle("Navigation stack Boot Camp")
        }
    }
}

#Preview {
    NavigationStackBootCamp()
}
