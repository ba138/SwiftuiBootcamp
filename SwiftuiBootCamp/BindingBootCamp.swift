//
//  BindingBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 21/05/2026.
//

import SwiftUI

struct BindingBootCamp: View {
    @State var bgColor : Color = Color.green
    var body: some View {
        ZStack{
            bgColor
                .ignoresSafeArea()
            ButtonView(bgColor: $bgColor)
        }
    }
}
struct ButtonView : View {
    @Binding var bgColor : Color
    var body: some View {
        VStack{
            Button {
                bgColor = .yellow
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
#Preview {
    BindingBootCamp()
}
