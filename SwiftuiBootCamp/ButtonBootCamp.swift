//
//  ButtonBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 17/05/2026.
//

import SwiftUI

struct ButtonBootCamp: View {
    @State var title: String = "Press the button to change the title"
    var body: some View {
        VStack(spacing:20) {
            Text(title)
            Button("Press"){
                self.title = "Button was pressed"
            }
        }
    }
}

#Preview {
    ButtonBootCamp()
}
