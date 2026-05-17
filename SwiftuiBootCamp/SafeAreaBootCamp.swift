//
//  SafeAreaBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 17/05/2026.
//

import SwiftUI

struct SafeAreaBootCamp: View {
    var body: some View {
        ZStack {
            //Background
            Color.green.edgesIgnoringSafeArea(.
            all)
            //Foreground
            VStack {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Spacer()
            }                .frame(maxWidth: .infinity,maxHeight: .infinity)
//                .background(.red)
                
        }

    }
}

#Preview {
    SafeAreaBootCamp()
}
