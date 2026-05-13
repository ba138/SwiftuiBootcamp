//
//  SpacersBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 13/05/2026.
//

import SwiftUI

struct SpacersBootCamp: View {
    var body: some View {

        HStack{
            Spacer()
                .frame(height: 10)
                .background(.pink)
            Rectangle()
                .frame(width: 100,height: 100)
            Spacer()
                .frame(height: 10)
                .background(.pink)
            Rectangle()
                .fill(.red)
                .frame(width: 100,height: 100)
            Spacer()
                .frame(height: 10)
                .background(.pink)
            Rectangle()
                .fill(.green)
                .frame(width: 100,height: 100)

        }
        .padding(.horizontal,100)

            }
//        .background(.blue)
    
}

#Preview {
    SpacersBootCamp()
}
