//
//  SliderBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 03/06/2026.
//

import SwiftUI

struct SliderBootCamp: View {
    @State var sliderValue : Double = 10
    var body: some View {
        Slider(
            value : $sliderValue
        )
        .accentColor(.red)
    }
}

#Preview {
    SliderBootCamp()
}
