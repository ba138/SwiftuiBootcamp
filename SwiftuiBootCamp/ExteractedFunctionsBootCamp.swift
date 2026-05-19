//
//  ExteractedFunctionsBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 19/05/2026.
//

import SwiftUI

struct ExteractedFunctionsBootCamp: View {
    @State var bgColor:Color = Color.pink
    var body: some View {
        ZStack{
            //background
            Color.yellow.ignoresSafeArea()
                //content
            VStack{
                Text("Title")
                    .font(.largeTitle)
                Button(action: {
                    
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
        
    }
}

#Preview {
    ExteractedFunctionsBootCamp()
}
