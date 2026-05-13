//
//  InitizerandEnumsBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 13/05/2026.
//

import SwiftUI

struct InitizerandEnumsBootCamp: View {
    var backgroundColor: Color
    let count: Int
    let title: String
    init( count: Int, fruits: Fruits) {
        self.count = count
//        self.title = title
//        if title == "Apples" {
//            self.backgroundColor = .red
//        }else {
//            self.backgroundColor = .green
//        }
        if fruits == .apple{
            self.title = "Apples"
            self.backgroundColor = .red
        }else{
            self.title = "Orange"
            self.backgroundColor = .orange
        }
    }
    enum Fruits {
        case apple
        case orange
    }
    var body: some View {
        VStack{
            Text("\(count)")
            Text(title)
        }
        .frame(width: 150,height: 150)
        .background(backgroundColor)
        .cornerRadius(20)
        .font(.system(size: 30,))
        .foregroundColor(.white)
    }
}

#Preview {
    HStack{
        InitizerandEnumsBootCamp(
            count: 54,
            fruits:.orange
        )
        InitizerandEnumsBootCamp(
            count: 54,
            fruits:.apple
        )
    }.padding(.horizontal,16)
}
