//
//  AppStorageBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 12/06/2026.
//

import SwiftUI

struct AppStorageBootCamp: View {
    @State var currentUserNamw : String? = nil
    var body: some View {
        VStack{
            Text(currentUserNamw ?? "Enter your name")
            if let name = currentUserNamw{
                Text(name)
            }
            Button("save") {
                currentUserNamw = "Basit Ali"
            }
        }
    }
}

#Preview {
    AppStorageBootCamp()
}
