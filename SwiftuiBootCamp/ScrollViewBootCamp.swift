//
//  ScrollViewBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 15/05/2026.
//

import SwiftUI

struct ScrollViewBootCamp: View {
    var body: some View {
        VStack{
            ScrollView{
                RoundedRectangle(
                    cornerRadius: 24
                )
                .frame(
                    width: 300,
                    height: 300
                )
                RoundedRectangle(
                    cornerRadius: 24
                )
                .frame(
                    width: 300,
                    height: 300
                )
                RoundedRectangle(
                    cornerRadius: 24
                )
                .frame(
                    width: 300,
                    height: 300
                )
            }
           
        }    }
}

#Preview {
    ScrollViewBootCamp()
}
