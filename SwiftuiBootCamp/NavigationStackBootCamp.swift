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
            } label: {
            Text("Click Me")
            }
            .navigationTitle("Navigation stack Boot Camp")
        }
    }
}
struct ScreenTwo : View {
    let value : Int
    init(value: Int) {
        self.value = value
        print("value for screen \(value)")
    }
    var body: some View {
        Text("Screen 2")

    }
}

#Preview {
    NavigationStackBootCamp()
}
