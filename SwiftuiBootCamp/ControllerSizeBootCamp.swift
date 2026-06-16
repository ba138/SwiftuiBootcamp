//
//  ControllerSizeBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 16/06/2026.
//

import SwiftUI

struct ControllerSizeBootCamp: View {
    var body: some View {
        VStack{
            Button("Button"){
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.plain)
            Button("Button"){
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.bordered)
            Button("Button"){
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderedProminent)
            Button("Button"){
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.glass)
        }.padding()
    }
}

#Preview {
    ControllerSizeBootCamp()
}
