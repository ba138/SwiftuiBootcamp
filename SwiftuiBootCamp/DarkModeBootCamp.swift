//
//  DarkModeBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 05/06/2026.
//

import SwiftUI

struct DarkModeBootCamp: View {
    var body: some View {
        NavigationView{
            ScrollView {
                VStack(spacing : 20){
                    Spacer()
                    Text("This is Primary Color")
                        .foregroundColor(.primary)
                    Text("This is Secondary Color")
                        .foregroundColor(.secondary)
                    
                }
            }
        }
        .navigationTitle(Text("This is Dark Mode Boot Camp"))
    }
}

#Preview {
    DarkModeBootCamp()
}
