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
            Button {
                self.title="Login Button Is Pressed"
            } label: {
                HStack{
                    Text("Login").font(.system(size: 24,weight: .bold))
                    Image(systemName: "arrow.right").fontWeight(.bold)
                }
            }

        }
    }
}

#Preview {
    ButtonBootCamp()
}
