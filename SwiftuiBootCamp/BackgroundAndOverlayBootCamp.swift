//
//  BackgroundAndOverlayBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 11/05/2026.
//

import SwiftUI

struct BackgroundAndOverlayBootCamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).background(
//            Color.red
            LinearGradient(colors: [AppColors.button,AppColors.favorite], startPoint: UnitPoint.leading, endPoint: UnitPoint.trailing)
        )
    }
}

#Preview {
    BackgroundAndOverlayBootCamp()
}
