//
//  ForEachBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 14/05/2026.
//

import SwiftUI

struct ForEachBootCamp: View {
    var body: some View {
        VStack{
            ForEach(0..<10, content: {index in
//            Text("\(index)")
                HStack{
                    Circle()
                        .fill(.red)
                        .frame(width: 50)
                    
                    Text("Index : \(index)").font(.system(size: 24))
                }
            })
        }
    }
}

#Preview {
    ForEachBootCamp()
}
