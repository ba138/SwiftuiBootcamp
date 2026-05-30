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
        .foregroundColor(.white)
        .padding()
        .background(
            Color.green
                .cornerRadius(20)
        )
        .contextMenu {
            Button {
                
            } label: {
                Label("Button 1", systemImage: "flame.fill")
            }
            Button {
                
            } label: {
                Text("Button 2")
            }
            Button {
                
            } label: {
                HStack {
                    Text("Button 2")
                    Image(systemName: "heart.fill")
                }
            }


        }
    }
}

#Preview {
    ContextMenuBootcamp()
}
