//
//  DarkModeBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 05/06/2026.
//

import SwiftUI

struct DarkModeBootCamp: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        NavigationView{
            ScrollView {
                VStack(spacing : 20){
                    Spacer()
                    Text("This is Primary Color")
                        .foregroundColor(.primary)
                    Text("This is Secondary Color")
                        .foregroundColor(.secondary)
                    Text("This is Black Color")
                        .foregroundColor(colorScheme == .light ? .black : .white
                        )
                    Text("This is adaptive  Color")
                        .foregroundColor(Color("adaptiveColor"))
                    
                }
            }
        }
        .navigationTitle(Text("This is Dark Mode Boot Camp"))
    }
}

#Preview {
    DarkModeBootCamp()
}
