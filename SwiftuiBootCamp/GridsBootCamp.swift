//
//  GridsBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 16/05/2026.
//

import SwiftUI

struct GridsBootCamp: View {
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var body: some View {
        LazyVGrid(columns:columns,alignment: .center) {
            Text("hi there i am basit")
        }    }
}

#Preview {
    GridsBootCamp()
}
