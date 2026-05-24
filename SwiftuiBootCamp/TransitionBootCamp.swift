//
//  TransitionBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 24/05/2026.
//

import SwiftUI

struct TransitionBootCamp: View {
    var body: some View {
        ZStack{
            VStack{
                Button {
                    
                } label: {
                    Text("Button")
                }
                Spacer()

            }
            GeometryReader { geo in
                RoundedRectangle(cornerRadius: 20)
                    .frame(height: geo.size.height * 0.5)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            }
        }
    }
}

#Preview {
    TransitionBootCamp()
}
