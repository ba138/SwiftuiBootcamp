//
//  BackgroundAndOverlayBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 11/05/2026.
//

import SwiftUI

struct BackgroundAndOverlayBootCamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .frame(width: 100,height: 100)
            .background(
//            Color.red
//            LinearGradient(colors: [AppColors.button,AppColors.favorite], startPoint: UnitPoint.leading, endPoint: UnitPoint.trailing)
                Circle().fill(Color.green)
        )
            .background(
                Circle().fill(Color.red).frame(width: 120,height: 120)
            )
    }
}

#Preview {
    BackgroundAndOverlayBootCamp()
}
