//
//  AnimationsBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 23/05/2026.
//

import SwiftUI

struct AnimationsBootCamp: View {
    var body: some View {
        VStack{
            Button {
                
            } label: {
                Text("Button")
            }

            
            RoundedRectangle(cornerRadius: 25)
                .fill(.green)
                .frame(
                    width: 100,
                    height: 100
                )
        }
    }
}

#Preview {
    AnimationsBootCamp()
}
