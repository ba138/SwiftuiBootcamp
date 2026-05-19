//
//  ExteractedFunctionsBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 19/05/2026.
//

import SwiftUI

struct ExteractedFunctionsBootCamp: View {
    @State var bgColor:Color = Color.yellow
    
    var body: some View {
        ZStack{
            //background
bgColor
                .ignoresSafeArea()
                //content
            VStack{
                Text("Title")
                    .font(.largeTitle)
                Button(action: {
                    buttonPressed()
                    
                }) {
                    Text("Pressme").font(.subheadline).foregroundColor(.white)
                        .padding()
                        .background(.black)
                        .cornerRadius(12)
                }
            }
        }
    }
    func buttonPressed(){
        bgColor = Color.pink
    }
}

#Preview {
    ExteractedFunctionsBootCamp()
}
