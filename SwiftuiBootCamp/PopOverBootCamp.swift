//
//  PopOverBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 25/05/2026.
//

import SwiftUI

struct PopOverBootCamp: View {
    var body: some View {
        ZStack{
            Color.orange
                .ignoresSafeArea()
            VStack {
                Button {
                    
                } label: {
                    Text("Button")
                        .font(.largeTitle)
                    
                    
                }
                Spacer()

            }


        }
    }
}
struct NewScreen : View {
    var body: some View {
        ZStack{
            Color.purple
                .ignoresSafeArea()
        }
    }
}

#Preview {
    PopOverBootCamp()
}
