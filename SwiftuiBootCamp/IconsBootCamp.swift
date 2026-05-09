//
//  IconsBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 09/05/2026.
//

import SwiftUI

struct IconsBootCamp: View {
    var body: some View {
        Image(systemName: "person.fill.badge.plus")
            . renderingMode(.original)
//        .font(.largeTitle)
            .font(
                .system(size: 200)
            )
//            .foregroundColor(AppColors.favorite)
    }
}

#Preview {
    IconsBootCamp()
}
