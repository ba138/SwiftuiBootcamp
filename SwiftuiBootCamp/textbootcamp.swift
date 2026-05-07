//
//  textbootcamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 07/05/2026.
//

import SwiftUI

struct textbootcamp: View {
    var body: some View {
//        Text("This swiftuibootcamp and adding text")
//            .font(.body)
//            // .fontWeight(.heavy)
//            .bold()
////            .underline()
//            .underline(true,color: Color.red)
////            .strikethrough()
//            .strikethrough(true,color: Color.green)
        //Custom font
        Text("This is custom font").font(.system(size: 24,weight: .bold,design: .rounded))
    }
}

#Preview {
    textbootcamp()
}
