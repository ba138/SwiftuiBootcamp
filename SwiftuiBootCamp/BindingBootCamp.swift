//
//  BindingBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 21/05/2026.
//

import SwiftUI

struct BindingBootCamp: View {
    @State var bgColor : Color = Color.green
    @State var count : Int = 0
    var body: some View {
        ZStack{
            bgColor
                .ignoresSafeArea()
            VStack{
                Text("Count : \(count)")
                ButtonView(bgColor: $bgColor,count: $count)

            }
        }
    }
}
struct ButtonView : View {
    @Binding var bgColor : Color
    @State var buttonColor : Color = Color.blue
    @Binding var count : Int
    var body: some View {
        VStack{
            Button {
                bgColor = .yellow
                buttonColor = .pink
                count += 1
            } label: {
                Text("Button")
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal)
                    .background(
                        buttonColor
                    )
                    .cornerRadius(10)
            }

        }

    }
}
#Preview {
    BindingBootCamp()
}
