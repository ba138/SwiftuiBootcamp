//
//  StepperBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 03/06/2026.
//

import SwiftUI

struct StepperBootCamp: View {
    @State var value : Int = 10
    var body: some View {
        VStack {
            Text("\(value)")
            Stepper("Stepper",value: $value)
        } .padding()
    }
}

#Preview {
    StepperBootCamp()
}
