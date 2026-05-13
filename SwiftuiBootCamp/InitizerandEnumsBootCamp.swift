//
//  InitizerandEnumsBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 13/05/2026.
//

import SwiftUI

struct InitizerandEnumsBootCamp: View {
    let backgroundColor: Color
    let count: Int
    let title: String
    var body: some View {
        VStack{
            Text("\(count)")
            Text(title)
        }
        .frame(width: 200,height: 200)
        .background(backgroundColor)
        .cornerRadius(20)
        .font(.system(size: 30,))
        .foregroundColor(.white)
    }
}

#Preview {
    InitizerandEnumsBootCamp(
        backgroundColor: .blue,
        count: 54,
        title: "Apples"
    )
}
