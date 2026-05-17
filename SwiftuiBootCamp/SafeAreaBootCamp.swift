//
//  SafeAreaBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 17/05/2026.
//

import SwiftUI

struct SafeAreaBootCamp: View {
    var body: some View {
//        ZStack {
//            //Background
//            Color.green.ignoresSafeArea()
//            //Foreground
//            VStack {
//                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                Spacer()
//            }                .frame(maxWidth: .infinity,maxHeight: .infinity)
////                .background(.red)
//
//        }
        ScrollView{
            VStack{
                Text(" scrollview")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity,alignment: .leading)
                ForEach(0..<20) { index in
                    RoundedRectangle(cornerRadius: 25)
                        .fill(.white)
                        .shadow(radius: 10)
                        .frame(width: 300,height: 300)
                        .padding(20)
                }
            }
        }
        .background(Color.blue.ignoresSafeArea())
            }
}

#Preview {
    SafeAreaBootCamp()
}

