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
            Text("\(index)")
            })
        }
    }
}

#Preview {
    ForEachBootCamp()
}
