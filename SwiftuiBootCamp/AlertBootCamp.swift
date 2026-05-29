//
//  AlertBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 29/05/2026.
//

import SwiftUI

struct AlertBootCamp: View {
    @State var showAlert : Bool = false
    var body: some View {
        Button {
            showAlert.toggle()
        } label: {
            Text("Click Here")
        }.alert(isPresented: $showAlert) {
//            Alert(title: Text("Error"))
            Alert(
                title: Text("Error"),
                  message: Text("This is th error"),
                primaryButton: .destructive(Text("Delete")), secondaryButton: .cancel()
                
            )
        }

    }
}

#Preview {
    AlertBootCamp()
}
