//
//  GroupBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 22/06/2026.
//

import SwiftUI

struct GroupBootCamp: View {
    var body: some View {
        VStack (spacing : 50){
            Text("Hello, World!")
            Group {
                Text("Hello, World!")
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            .foregroundColor(.cyan)
            .font(.title)



        }
        .foregroundColor(.green)
        .font(.largeTitle)
    }
}

#Preview {
    GroupBootCamp()
}
