//
//  ResizeableSheetBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 21/06/2026.
//

import SwiftUI

struct ResizeableSheetBootCamp: View {
    @State private var showSheet : Bool = false
    var body: some View {
        Button("Click me"){
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet) {
            ResizeScreen()
//                .presentationDetents([.medium])
                .presentationDragIndicator(.visible)
                .presentationDetents([.fraction(0.7)])
        }
    }
}
struct ResizeScreen : View {
    var body: some View {
        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Hello, world!@*/Text("Hello, world!")/*@END_MENU_TOKEN@*/
    }
}
#Preview {
    ResizeableSheetBootCamp()
}
