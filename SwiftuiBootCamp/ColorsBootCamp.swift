//
//  ColorsBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 08/05/2026.
//

import SwiftUI

struct ColorsBootCamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(AppColors.button)
            .frame(width: 300,height: 200)
//            .shadow(radius: 10,)
            .shadow(color:AppColors.textSecondary.opacity(0.5), radius: 10,x: -40,y: -20)
    }
}

#Preview {
    ColorsBootCamp()
}
