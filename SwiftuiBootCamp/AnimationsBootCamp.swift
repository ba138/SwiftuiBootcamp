//
//  AnimationsBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 23/05/2026.
//

import SwiftUI

struct AnimationsBootCamp: View {
    @State var isAnimated : Bool = false
    var body: some View {
        VStack{
            Button {
                withAnimation (.default){
                    isAnimated.toggle()
                }
                
            } label: {
                Text("Button")
            }

            
            RoundedRectangle(cornerRadius: 25)
                .fill(isAnimated ? .green : .red)
                .frame(
                    width: 300,
                    height: 300
                )
        }
    }
}

#Preview {
    AnimationsBootCamp()
}
