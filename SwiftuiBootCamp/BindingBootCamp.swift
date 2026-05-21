//
//  BindingBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 21/05/2026.
//

import SwiftUI

struct BindingBootCamp: View {
    var body: some View {
        ZStack{
            Color.red
                .ignoresSafeArea()
            VStack{
                Button {
                    
                } label: {
                    Text("Button")
                        .foregroundColor(.white)
                        .padding()
                        .padding(.horizontal)
                        .background(
                            .blue
                        )
                        .cornerRadius(10)
                }

            }
        }
    }
}

#Preview {
    BindingBootCamp()
}
