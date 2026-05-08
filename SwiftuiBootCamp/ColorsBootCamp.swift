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
            .fill(AppColors.primary)
            .frame(width: 400,height: 200)
    }
}

#Preview {
    ColorsBootCamp()
}
