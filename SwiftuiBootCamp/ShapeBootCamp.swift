//
//  ShapeBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 07/05/2026.
//

import SwiftUI

struct ShapeBootCamp: View {
    var body: some View {
//        Circle()
            //.fill(Color.blue)
          //  .foregroundColor(Color.pink)
           // .stroke()
//            .stroke(Color.red,lineWidth: 30).frame(width: 300)
//            .stroke(Color.red,style: StrokeStyle(lineWidth: 10,lineCap: .butt,dash: [5],),)
//            .trim(from: 0.2,to: 1.0).stroke(Color.purple ,lineWidth: 10).frame(width: 300)
//          Ellipse().trim().trim(from:0.3,to: 1).fill(Color.blue).frame(width: 300,height: 400)
//        Capsule(style: .circular).stroke(lineWidth: 10).frame(width: 300,height: 500)
//        Rectangle()
        RoundedRectangle(cornerRadius: 10)
            .fill(Color.green)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.red, style: StrokeStyle(lineWidth: 2))
            )
            .frame(width: 300, height: 400)
        
    }
}

#Preview {
    ShapeBootCamp()
}
