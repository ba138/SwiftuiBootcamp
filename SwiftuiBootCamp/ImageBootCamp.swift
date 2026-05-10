//
//  ImageBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 10/05/2026.
//

import SwiftUI

struct ImageBootCamp: View {
    var body: some View {
        //Adding images
        //  Image("google")
        //         .resizable()
        //            .aspectRatio(contentMode: .fill)
        //            .scaledToFill()
        //          .scaledToFit()
        //           .frame(width: 300, height: 200)
        //            .clipped()
        //            .cornerRadius(30)
        //           .clipShape(
        //                Circle()
        //                RoundedRectangle(cornerRadius: 35)
        //               Ellipse()
        //           )
        //Adding image to icon
        Image("google")
            .renderingMode(
                .template)
            .resizable()
            .foregroundColor(
                .red)
            .scaledToFit()
            .frame(width: 200,height: 150)
    }
}

#Preview {
    ImageBootCamp()
}
