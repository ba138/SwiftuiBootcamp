//
//  StateBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 18/05/2026.
//

import SwiftUI

struct StateBootCamp: View {
    @State var backgroundColor: Color = .red;
    @State var title: String = "Title of the Layer";
    @State var count: Int = 0;
    var body: some View {
        ZStack{
            // background
           backgroundColor
                .edgesIgnoringSafeArea(.all)
                // content layer
            VStack(spacing: 20,) {
                Text(title)
                    .font(
                        .system(
                            size: 30,
                            weight: .bold
                        )
                    )
                    .foregroundColor(
                        .white
                    )
                Text("Count : \(count)")
                    .font(
                        .system(
                            size: 30,
                            weight: .bold
                        )
                    )
                    .foregroundColor(
                        .white
                    )
                HStack(spacing:20) {
                    Button {
                        backgroundColor = .green;
                        title = "Button 1 is Pressed";
                        count += 1
                    } label: {
                        Text("Button 1")
                            .foregroundColor(.black)
                            .padding()
                            .padding(.horizontal,20)
                            .background(
                                .white
                            )
                            .cornerRadius(10)
                    }
                    Button {
                        backgroundColor = .purple;
                        title = "Button 2 is Pressed";
                        count -= 1

                    } label: {
                        Text("Button 2")
                            .foregroundColor(.black)
                            .padding()
                            .padding(.horizontal,20)
                            .background(
                                .white
                            )
                            .cornerRadius(10)
                    }


                }
            }
        }
    }
}

#Preview {
    StateBootCamp()
}

