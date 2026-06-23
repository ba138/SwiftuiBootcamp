//
//  AnimationUpdatedBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 23/06/2026.
//

import SwiftUI

struct AnimationUpdatedBootCamp: View {
    @State private var animation1 : Bool = false
    @State private var animation2 : Bool = false

    var body: some View {
        ZStack{
            VStack{
                Button("Button1") {
                    animation1.toggle()
                    
                }
                Button("Button2") {
                    animation2.toggle()
                }
                            ZStack{
                                Rectangle()
                                    .frame(width: 120,height: 120)
                                    .frame(maxWidth: .infinity,alignment:animation1 ? .leading : .trailing)
                                    .background(.green)
                                    .frame(maxHeight: .infinity,alignment:animation2 ? .top : .bottom)
                                    .background(.yellow)
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
        .animation(.spring,value: animation1)
        .animation(.linear(duration: 5),value: animation2)

    }
}

#Preview {
    AnimationUpdatedBootCamp()
}
