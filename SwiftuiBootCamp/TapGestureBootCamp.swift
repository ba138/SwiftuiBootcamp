//
//  TapGestureBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 09/06/2026.
//

import SwiftUI

struct TapGestureBootCamp: View {
    @State var isSelected : Bool = false
    var body: some View {
        VStack(spacing: 20) {
            RoundedRectangle(cornerRadius: 24)
                .frame(height: 300)
                .foregroundColor(isSelected ? Color.green : Color.black)
            Button {
                isSelected.toggle()
            } label: {
            Text("Button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 56)
                    .frame(maxWidth: .infinity)
                    .background(.blue)
                    .cornerRadius(20)
            }
            Spacer()

        }
        .padding(20)
    }
}

#Preview {
    TapGestureBootCamp()
}
