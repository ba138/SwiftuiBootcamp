//
//  CustomKeyboardSubmitBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 18/06/2026.
//

import SwiftUI

struct CustomKeyboardSubmitBootCamp: View {
    @State private var text : String = ""
    var body: some View {
TextField("Place holder for text", text: $text)
            .onSubmit {
                print("Somthing to the console")
            }
    }
}

#Preview {
    CustomKeyboardSubmitBootCamp()
}
