//
//  AnyLayoutBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 27/06/2026.
//

import SwiftUI

struct AnyLayoutBootCamp: View {
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass

    var body: some View {
        VStack(spacing: 20) {
            Text("Horizontal : \(horizontalSizeClass.debugDescription)")
            Text("Vertical : \(verticalSizeClass.debugDescription)")
            let layout : AnyLayout = horizontalSizeClass == .compact ? AnyLayout(VStackLayout()) : AnyLayout(HStackLayout())
            layout {
                VStack{
                    Text("Alpha")
                    Text("Gema")
                    Text("Beta")

                }
            
           
            }
        }
    }
}

#Preview {
    AnyLayoutBootCamp()
}
