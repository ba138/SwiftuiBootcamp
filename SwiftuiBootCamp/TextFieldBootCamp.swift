//
//  TextFieldBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 31/05/2026.
//

import SwiftUI

struct TextFieldBootCamp: View {
    @State var textFieldText : String = ""
    var body: some View {
TextField("Search here",text: $textFieldText)
    }
}

#Preview {
    TextFieldBootCamp()
}
