//
//  ConditionalBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 22/05/2026.
//

import SwiftUI

struct ConditionalBootCamp: View {
    @State var isShow: Bool = true;
    var body: some View {
        VStack(spacing:20){
            Button {
                isShow.toggle()
            } label: {
                Text("Pressed : \(isShow.description)")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.red)
                    .cornerRadius(6)
            }
            if isShow == true{
                Circle(
                    
                )
                .fill(.brown)
                .padding(.all,20)

            }
            
        }
    }
}

#Preview {
    ConditionalBootCamp()
}
