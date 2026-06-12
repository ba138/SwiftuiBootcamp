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
            if let name = currentUserNamw{
                Text(name)
            }
            Button("save") {
                
            }
        }
    }
}

#Preview {
    AppStorageBootCamp()
}
