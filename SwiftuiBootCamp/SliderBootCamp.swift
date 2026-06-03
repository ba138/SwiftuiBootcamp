//
//  SliderBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 03/06/2026.
//

import SwiftUI

struct SliderBootCamp: View {
    @State var sliderValue : Double = 3
    var body: some View {
        VStack {
            HStack {
                Text(" Rating : ")
                Text(
//                    "\(sliderValue)"
                    String(format: "%.1f",sliderValue)
                )
            }
//            Slider(
//                value : $sliderValue
//            )
//            Slider(value: $sliderValue,in: 1...5)
//            Slider(value: $sliderValue,
//                   in: 1...5,
//                   step: 0.5
//            )
            Slider(
                value: $sliderValue,
                   in:1...5 ,
                   step: 0.5,
                onEditingChanged: { (_) in
                    
                },
                minimumValueLabel: Text("1"), maximumValueLabel: Text("5"),
                label: {
             Text("Title")
         },
            )
            .accentColor(.red)
        }.padding()
    }
}

#Preview {
    SliderBootCamp()
}
