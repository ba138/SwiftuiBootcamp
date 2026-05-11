//
//  BackgroundAndOverlayBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 11/05/2026.
//

import SwiftUI

struct BackgroundAndOverlayBootCamp: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .frame(width: 100,height: 100)
//            .background(
////            Color.red
////            LinearGradient(colors: [AppColors.button,AppColors.favorite], startPoint: UnitPoint.leading, endPoint: UnitPoint.trailing)
//                Circle().fill(
//                              LinearGradient(colors: [Color.red,Color.green], startPoint: UnitPoint.leading, endPoint: .trailing)
//                             )
//        )
//            .background(
//                Circle().fill(
//                    LinearGradient(colors: [Color.blue,Color.green], startPoint:.leading, endPoint:.trailing)
//                ).frame(width: 120,height: 120)
//            )
//        RoundedRectangle(cornerRadius: 24)
//            .fill(AppColors.button)
//            .frame(width: .infinity,height: 56)
//            .padding(.all)
//            .overlay(Text("Login")
//                .foregroundColor(Color.white)
//                .font(
//            .system(
//                size: 24,weight: .bold,design: .rounded
//            ))
//            ).shadow(
//                color: .black.opacity(0.3),
//                radius: 9,
//            x: 0,
//                y: 10
//            )
//        RoundedRectangle(cornerRadius: 24).frame(width: 300,height: 300).overlay(
//            Image("google")
//                .resizable()
//                .frame(
//                    width: 180,height: 180,alignment: .center
//                )
//        ).background(
//            RoundedRectangle(cornerRadius: 30)
//                .fill(Color.purple)
//                .frame(width: 350,height: 350)
//                
//        )
        Circle()
            .fill(Color.purple)
            .frame(width: 100,height: 100)
            .shadow(
                color: Color.purple.opacity(0.8), radius: 10,x: 0.0,y: 10
            )
            .overlay(
                Image(systemName: "heart.fill")
                    .font(.system(size: 40, weight: .bold))
                    .foregroundColor(.white)
                            
            )
            .overlay(alignment: .bottomTrailing) {
                Circle()
                    .fill(Color.blue)
                    .frame(width: 40, height: 40)
                    .shadow(color: .blue, radius: 10)
                    .overlay(
                        Text("2")
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                    )
                    .offset(x: 6, y: 6) // small padding from edges (optional)
            }
            
    }
}

#Preview {
    BackgroundAndOverlayBootCamp()
}
