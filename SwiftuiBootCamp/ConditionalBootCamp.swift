//
//  ConditionalBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 22/05/2026.
//

import SwiftUI

struct ConditionalBootCamp: View {
    var body: some View {
        VStack(spacing:20){
            Button {
                
            } label: {
                Text("Pressed")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.red)
                    .cornerRadius(6)
            }
            Circle(
                
            )
            .fill(.brown)
            .padding(.all,20)

        }    }
}

#Preview {
    ConditionalBootCamp()
}
