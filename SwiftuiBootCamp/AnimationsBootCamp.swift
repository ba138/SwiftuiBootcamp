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
                withAnimation (
                    Animation
                        .default
                        .repeatCount(5, autoreverses: true
                                    )

                ){
                    isAnimated.toggle()
                }
                
            } label: {
                Text("Button")
            }

            RoundedRectangle(cornerRadius:isAnimated ? 50 : 25)
                .fill(isAnimated ? .green : .red)
                .frame(
                    width:isAnimated ? 100: 300,
                    height:isAnimated ? 100 : 300
                        
                )
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y :isAnimated ? 20 : 300)
            Spacer()
        }
    }
}

#Preview {
    AnimationsBootCamp()
}
