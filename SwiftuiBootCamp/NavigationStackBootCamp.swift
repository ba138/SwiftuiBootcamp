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
            VStack(spacing : 30) {
                ForEach(0..<10) { value in
                    NavigationLink(value: value) {
                        Text("Click Me : \(value)")
                    }
                }
                
                
                .navigationTitle("Navigation stack Boot Camp")
                .navigationDestination(for: Int.self) { value in
                    ScreenTwo(value: value)
                }
            }
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
        Text("Screen : \(value)")

    }
}

#Preview {
    NavigationStackBootCamp()
}
