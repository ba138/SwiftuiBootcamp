//
//  FrameBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 10/05/2026.
//

import SwiftUI

struct FrameBootCamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(Color.red)
            .frame(width: 300,height: 300)
            .background(Color.green)
            .frame(width: 500,height: 400,alignment: .center).background(AppColors.button)
    }
}

#Preview {
    FrameBootCamp()
}
