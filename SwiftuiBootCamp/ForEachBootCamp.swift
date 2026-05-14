//
//  ForEachBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 14/05/2026.
//

import SwiftUI

struct ForEachBootCamp: View {
    let data: [String] = [
        "hi there",
        "hello",
        "nice",
        "well",
    ]
    var body: some View {
        
        ForEach(data.indices){index in
            Text("Greetings : \(data[index])")
            
        }
//        VStack{
//            ForEach(0..<10, content: {index in
////            Text("\(index)")
//                HStack{
//                    Circle()
//                        .fill(.red)
//                        .frame(width: 50)
//                    
//                    Text("Index : \(index)").font(.system(size: 24))
//                }
//            })
//        }
    }
}

#Preview {
    ForEachBootCamp()
}
