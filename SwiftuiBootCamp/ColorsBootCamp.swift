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
            .frame(width: 400,height: 200)
//            .shadow(radius: 10,)
            .shadow(color: AppColors.primary, radius: 10,x: 0,y: 6)
    }
}

#Preview {
    ColorsBootCamp()
}
