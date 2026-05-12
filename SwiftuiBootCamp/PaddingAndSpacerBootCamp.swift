//
//  PaddingAndSpacerBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 12/05/2026.
//

import SwiftUI

struct PaddingAndSpacerBootCamp: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .padding(.all,30)
//            .padding(.leading,20)
//            .foregroundColor(.white     )
//            .font(.system(size: 30))
//            .background(.red)
        VStack(
            alignment: .leading, 
            content: {
            Text("This is Padding")
                .font(.largeTitle)
                .fontWeight(.bold)
                
                Text("This is the discription text of the padding which should be align to the leading and it should work because i use leading ")            }).padding(.all,8)
.background(
                Color.blue
            )
        
        
    }
}

#Preview {
    PaddingAndSpacerBootCamp()
}
