//
//  AnimationUpdatedBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 23/06/2026.
//

import SwiftUI

struct AnimationUpdatedBootCamp: View {
    var body: some View {
        ZStack{
            VStack{
                Button("Button1") {
                    
                }
                Button("Button2") {
                    
                }
                            ZStack{
                                Rectangle()
                                    .frame(width: 120,height: 120)
                            }
                            .frame(maxWidth: .infinity,maxHeight: .infinity)
                            .background(.red)
            }
//            
//            ZStack{
//                Rectangle()
//                    .frame(width: 120,height: 120)
//            }
//            .frame(maxWidth: .infinity,)
//            .background(.red)
            
        }
    }
}

#Preview {
    AnimationUpdatedBootCamp()
}
