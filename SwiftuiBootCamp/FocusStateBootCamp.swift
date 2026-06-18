//
//  FocusStateBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 18/06/2026.
//

import SwiftUI

struct FocusStateBootCamp: View {
    @State private var userName : String = ""
    var body: some View {
        VStack{
            TextField("your Name here ...", text: $userName)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(12)

        } .padding(20)
            
    }
}

#Preview {
    FocusStateBootCamp()
}
