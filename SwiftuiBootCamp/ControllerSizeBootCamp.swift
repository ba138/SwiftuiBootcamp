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
            .controlSize(.large)
            Button("Button"){
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.bordered)
            .controlSize(.extraLarge)

            Button("Button"){
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderedProminent)
            .controlSize(.small)

            Button("Button"){
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.glass)
            .controlSize(.mini)

        }.padding()
    }
}

#Preview {
    ControllerSizeBootCamp()
}
