//
//  SafeAreaInsetsBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 22/06/2026.
//

import SwiftUI

struct SafeAreaInsetsBootCamp: View {
    var body: some View {
        NavigationStack{
            List(0..<10) { data in
        RoundedRectangle(cornerRadius: 12)
                    .frame(height: 300)
            }
            .navigationTitle(Text("Safe Area Insets"))
            .safeAreaInset(edge: .bottom) {
                Button {
                    
                } label: {
Text("Select the Card")
                        .frame(maxWidth: .infinity)
                        .frame(height: 55)
                        .background(.green)
                }

            }
        }
    }
}

#Preview {
    SafeAreaInsetsBootCamp()
}
