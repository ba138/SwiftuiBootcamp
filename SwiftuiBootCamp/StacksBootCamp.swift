//
//  StacksBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 11/05/2026.
//

import SwiftUI

struct StacksBootCamp: View {
    var body: some View {
        //Vstack -> Vertical
        //Hstack -> Horizantal
        //Zstack -> z Axis(back to front)
//        VStack{
//            RoundedRectangle(
//                cornerRadius: 8
//            )
//            .fill(.red)
//                .frame(
//                    width: 60,
//                    height: 60
//                )
//            RoundedRectangle(
//                cornerRadius: 8
//            )
//            .fill(.blue)
//                .frame(
//                    width: 60,
//                    height: 60
//                )
//            RoundedRectangle(
//                cornerRadius: 8
//            )
//            .fill(.green)
//                .frame(
//                    width: 60,
//                    height: 60
//                )
//        }
//        // Hstack for horizontal aligment
//        HStack{
//            RoundedRectangle(
//                cornerRadius: 8
//            )
//            .fill(.red)
//                .frame(
//                    width: 60,
//                    height: 60
//                )
//            RoundedRectangle(
//                cornerRadius: 8
//            )
//            .fill(.blue)
//                .frame(
//                    width: 60,
//                    height: 60
//                )
//            RoundedRectangle(
//                cornerRadius: 8
//            )
//            .fill(.green)
//                .frame(
//                    width: 60,
//                    height: 60
//                )
//        }
//        ZStack{
//            RoundedRectangle(
//                cornerRadius: 8
//            )
//            .fill(.red)
//                .frame(
//                    width: 50,
//                    height: 50
//                )
//            RoundedRectangle(
//                cornerRadius: 8
//            )
//            .fill(.blue)
//                .frame(
//                    width: 40,
//                    height: 40
//                )
//            RoundedRectangle(
//                cornerRadius: 8
//            )
//            .fill(.green)
//                .frame(
//                    width: 30,
//                    height: 30
//                )
//        }
        VStack(alignment: .center,spacing:12,content: {
            RoundedRectangle(
                           cornerRadius: 8
                       )
                       .fill(.red)
                           .frame(
                               width: 50,
                               height: 50
                           )
                       RoundedRectangle(
                           cornerRadius: 8
                       )
                       .fill(.blue)
                           .frame(
                               width: 40,
                               height: 40
                           )
                       RoundedRectangle(
                           cornerRadius: 8
                       )
                       .fill(.green)
                           .frame(
                               width: 30,
                               height: 30
                           )
        })
    }
}

#Preview {
    StacksBootCamp()
}
