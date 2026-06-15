//
//  BackGroundMaterialBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 15/06/2026.
//

import SwiftUI

struct BackGroundMaterialBootCamp: View {
    var body: some View {
        VStack{
            Spacer()
            VStack{
                Text("Hi There")
            }
            .foregroundColor(.white)
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.black)
            .cornerRadius(24)
            
        }
        .ignoresSafeArea()
        .background(Image("google"))
    }
}

#Preview {
    BackGroundMaterialBootCamp()
}
