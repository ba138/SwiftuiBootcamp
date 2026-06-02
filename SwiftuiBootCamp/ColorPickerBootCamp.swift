//
//  ColorPickerBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 02/06/2026.
//

import SwiftUI

struct ColorPickerBootCamp: View {
    @State var bgColor : Color = .green
    var body: some View {
        ZStack{
            bgColor
                .ignoresSafeArea()
            ColorPicker(
                "Please Select A color",
                selection: $bgColor,
                supportsOpacity: true
            )
            .padding()
            .background(
                Color.white.cornerRadius(6)
            )
            .padding()
        }    }
}

#Preview {
    ColorPickerBootCamp()
}
