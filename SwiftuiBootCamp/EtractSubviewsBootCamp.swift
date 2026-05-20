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
            myItems
        }
    }
    var myItems : some View {
        VStack{
            Text("1")
            Text("Apple")
        }
        .padding()
        .background(
        ).cornerRadius(10)
    }
    
}

#Preview {
    EtractSubviewsBootCamp()
}
