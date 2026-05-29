//
//  AlertBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 29/05/2026.
//

import SwiftUI

struct AlertBootCamp: View {
    @State var showAlert : Bool = false
    @State var bgColor : Color = .yellow
    var body: some View {
        ZStack {
            bgColor.ignoresSafeArea()
            Button {
                showAlert.toggle()
            } label: {
                Text("Click Here")
            }.alert(isPresented: $showAlert, content: {
                getAlert()
            })
        }

    }
    func getAlert() -> Alert {
        return Alert(
            title: Text("Error"),
            message: Text("This is th error"),
            primaryButton: .destructive(Text("Delete"),action: {
                bgColor = .white
            }), secondaryButton: .cancel()
            
        )
    }
}

#Preview {
    AlertBootCamp()
}
