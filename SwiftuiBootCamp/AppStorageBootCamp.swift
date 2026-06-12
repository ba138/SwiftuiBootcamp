//
//  AppStorageBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 12/06/2026.
//

import SwiftUI

struct AppStorageBootCamp: View {
    @AppStorage("Name") var currentUserName : String?
    var body: some View {
        VStack{
            Text(currentUserName ?? "Enter your name")
            if let name = currentUserName{
                Text(name)
            }
            Button("save") {
                let name = "Ali"
                currentUserName = name
            }
        }
       
    }
}

#Preview {
    AppStorageBootCamp()
}
