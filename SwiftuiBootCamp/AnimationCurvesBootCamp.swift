//
//  AnimationCurvesBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 24/05/2026.
//

import SwiftUI

struct AnimationCurvesBootCamp: View {
    @State var isAnimated : Bool = false
    var body: some View {
        VStack{
            Button("Button"){
                isAnimated.toggle()
            }
            RoundedRectangle(cornerRadius: 20)
                .frame(width:isAnimated ? 350 : 50, height: 100)
                .animation(
                    Animation.default
                )
        }
    }
}

#Preview {
    AnimationCurvesBootCamp()
}
