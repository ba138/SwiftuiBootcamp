//
//  SettingViewBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 04/06/2026.
//

import SwiftUI

struct SettingViewBootCamp: View {
    var body: some View {
        ZStack {
            Color.yellow
                .ignoresSafeArea()
            Text("Setting")
                .font(.largeTitle)
                .foregroundColor(.white)
        }
    }
}

#Preview {
    SettingViewBootCamp()
}
