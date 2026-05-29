//
//  AlertBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 29/05/2026.
//

import SwiftUI

struct AlertBootCamp: View {
    @State var title : String = ""
    @State var message : String = ""
    @State var showAlert : Bool = false
    @State var bgColor : Color = .yellow
    var body: some View {
        ZStack {
            bgColor.ignoresSafeArea()
            HStack {
                Button {
                    showAlert.toggle()
                    title = "Failed to upload video".capitalized
                    message = "Error occure during uploading".capitalized
                } label: {
                    Text("Click Here 1")
                }
                Button {
                    showAlert.toggle()
                    title = "Uploading Success".capitalized
                    message = "Your video is uploaded suceesfuly🥳".capitalized
                } label: {
                    Text("Click Here 2")
                }
            }.alert(isPresented: $showAlert, content: {
                getAlert()
            })

        }

    }
    func getAlert() -> Alert {
        return Alert(
            title: Text(title),
            message: Text(message),
            dismissButton: .default(Text("Okay"))
        )
//        return Alert(
//            title: Text("Error"),
//            message: Text("This is th error"),
//            primaryButton: .destructive(Text("Delete"),action: {
//                bgColor = .white
//            }), secondaryButton: .cancel()
//            
//        )
    }
}

#Preview {
    AlertBootCamp()
}
