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
//        RoundedRectangle(cornerRadius: 24).fill(AppColors.button).frame(width: .infinity,height: 56).padding(.all).overlay(Text("Login").font(
//            .system(size: 24,weight: .bold,design: .rounded)))
        RoundedRectangle(cornerRadius: 24).frame(width: 300,height: 300).overlay(Image("google").resizable().frame(width: 180,height: 180,alignment: .center))
    }
}

#Preview {
    BackgroundAndOverlayBootCamp()
}
