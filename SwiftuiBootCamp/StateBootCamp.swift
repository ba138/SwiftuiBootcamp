//
//  StateBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 18/05/2026.
//

import SwiftUI

struct StateBootCamp: View {
    var body: some View {
        ZStack{
            // background
            Color.red
                .edgesIgnoringSafeArea(.all)
                // content layer
            VStack(spacing: 20,) {
                Text("Title of the layer")
                    .font(
                        .system(
                            size: 30,
                            weight: .bold
                        )
                    )
                    .foregroundColor(
                        .white
                    )
                Text("Count : 1")
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
