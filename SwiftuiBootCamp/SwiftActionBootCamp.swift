//
//  SwiftActionBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 17/06/2026.
//

import SwiftUI

struct SwiftActionBootCamp: View {
    @State var fruits : [String] = [
       "Apple",
       "Banana",
       "Orange",
       "Peach"
    ]
    var body: some View {
        List {
            ForEach(fruits, id: \.self) { fruit in
                Text(fruit)
            }
        }
    }
}

#Preview {
    SwiftActionBootCamp()
}

