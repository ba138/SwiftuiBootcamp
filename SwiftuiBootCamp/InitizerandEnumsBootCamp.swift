//
//  InitizerandEnumsBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 13/05/2026.
//

import SwiftUI

struct InitizerandEnumsBootCamp: View {
    var body: some View {
        VStack{
            Text("5")
            Text("Apples")
        }
        .frame(width: 200,height: 200)
        .background(.red)
        .cornerRadius(20)
        .font(.system(size: 30,))
        .foregroundColor(.white)
    }
}

#Preview {
    InitizerandEnumsBootCamp()
}
