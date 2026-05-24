//
//  AnimationCurvesBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 24/05/2026.
//

import SwiftUI

struct AnimationCurvesBootCamp: View {
    @State var isAnimated : Bool = false
    let time : Double = 10.0
    var body: some View {
        VStack{
            Button("Button"){
                isAnimated.toggle()
            }
            RoundedRectangle(cornerRadius: 20)
                .frame(width:isAnimated ? 350 : 50, height: 100)
                .animation(Animation.spring(
                    response: 3.0,
                    dampingFraction: 0.5,
                    blendDuration: 1.0
                ))
//                .animation(
//                    Animation.linear(duration: time)
//                )
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width:isAnimated ? 350 : 50, height: 100)
//                .animation(
//                    Animation.easeIn(duration: time)
//                )
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width:isAnimated ? 350 : 50, height: 100)
//                .animation(
//                    Animation.easeInOut(duration: time)
//                )
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width:isAnimated ? 350 : 50, height: 100)
//                .animation(
//                    Animation.easeOut(duration: time)
//                )
        }
    }
}

#Preview {
    AnimationCurvesBootCamp()
}
