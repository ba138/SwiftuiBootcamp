//
//  GridentsBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 08/05/2026.
//

import SwiftUI

struct GridentsBootCamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
//            .fill(
//                LinearGradient(
//                    colors: [AppColors.background, AppColors.button],
//                    startPoint: .leading,
//                    endPoint: .trailing
//                )
//            )
//            .frame(width: 300, height: 200)
//            .overlay {
//                Text("Centered text")
//                    .font(.headline)
//                    .foregroundStyle(AppColors.textPrimary)
//            }
//            .fill(
//                RadialGradient(gradient: Gradient(colors: [Color.red,Color.blue]), center: .center, startRadius: 5, endRadius: 150)
//            ).frame(width: 300,height: 200).overlay{
//                Text("This is redial gradient").foregroundColor(AppColors.textPrimary).bold()
//            }
            .fill(
                AngularGradient(
                    gradient: Gradient(colors: [Color.red, Color.green]),
                    center: .center,
                    angle: .degrees(45)
                )
            ).frame(width: 300,height: 200)
}
}

#Preview {
    GridentsBootCamp()
}
