//
//  ToolBarBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 20/06/2026.
//

import SwiftUI

struct ToolBarBootCamp: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color.indigo.ignoresSafeArea()
                Text("Hey I am Basit Ali")
                    .foregroundColor(.white)
            }
            .navigationTitle(Text("Tool Bar"))
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName: "heart.fill")
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "gear")
                }
            }
        }
    }
}

#Preview {
    ToolBarBootCamp()
}
