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
            .fill(
                LinearGradient(
                    gradient: Gradient(colors: [AppColors.background, AppColors.button]),
                    startPoint: .leading,
                    endPoint: .trailing
                )
            )
            .frame(width: 300, height: 200)   }
}

#Preview {
    GridentsBootCamp()
}
