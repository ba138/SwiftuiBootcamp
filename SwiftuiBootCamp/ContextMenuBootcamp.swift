//
//  ContextMenuBootcamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 30/05/2026.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    var body: some View {
        VStack{
            Image(systemName: "house.fill")
                .font(.system(size: 40)
                )
            Text("Swiftful Thinking".capitalized)
                .padding()
            Text("How to use Context Menu".capitalized)
                
        }
    }
}

#Preview {
    ContextMenuBootcamp()
}
