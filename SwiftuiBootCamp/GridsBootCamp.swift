//
//  GridsBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 16/05/2026.
//

import SwiftUI

struct GridsBootCamp: View {
    
    let columns = [
        GridItem(.fixed(100),alignment: .center),
        GridItem(.fixed(100),alignment: .center),
       

      
    ]
    var body: some View {
        LazyVGrid(columns:columns,alignment: .center) {
Rectangle()
            Rectangle()
            Rectangle()
            Rectangle()
            Rectangle()
            Rectangle()
            Rectangle()
            Rectangle()

        }    }
}

#Preview {
    GridsBootCamp()
}
