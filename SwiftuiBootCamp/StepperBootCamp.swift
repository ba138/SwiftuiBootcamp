//
//  StepperBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 03/06/2026.
//

import SwiftUI

struct StepperBootCamp: View {
    @State var value : Int = 10
    @State var widthValue : CGFloat = 0
    var body: some View {
        VStack {
            Text("\(value)")
            Stepper("Stepper",value: $value)
            RoundedRectangle(cornerRadius: 25)
                .frame(width:100 + widthValue,height: 100)
            
            Stepper("Stepper 2") {
increment(amount: 10)            }
            onDecrement: {
               decrement(amount: 10)
            }
        
        } .padding()
    }
    func increment (amount : CGFloat){
        widthValue += amount
    }
    func decrement (amount : CGFloat){
        widthValue -= amount
    }
}

#Preview {
    StepperBootCamp()
}
