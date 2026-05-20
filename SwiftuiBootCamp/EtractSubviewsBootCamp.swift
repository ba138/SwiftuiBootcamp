//
//  EtractSubviewsBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 20/05/2026.
//

import SwiftUI

struct EtractSubviewsBootCamp: View {
    var body: some View {
        ZStack{
            Color.cyan
                .edgesIgnoringSafeArea(.all)
            HStack{
                MyItems(title: "Apple", count: 1, color: .red)
                MyItems(title: "Oranges", count: 2, color: .orange)
                MyItems(title: "Bananas", count: 3, color: .yellow)

            }
        }
    }
    
}
struct MyItems : View {
    let title : String
    let count : Int
    let color : Color
    var body: some View {
        VStack{
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(
            color
        ).cornerRadius(10)
    }
}

#Preview {
    EtractSubviewsBootCamp()
}
