//
//  PickerBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 01/06/2026.
//

import SwiftUI

struct PickerBootCamp: View {
    @State var slectedText : String = "1"
    var body: some View {
        VStack {
            Picker(selection: $slectedText,
                   label: Text("Label"),
                   content:     {
                Text("1").tag("1")
                Text("2").tag("2")
                
                Text("3").tag("3")
                
                Text("4").tag("4")
                
                Text("5").tag("5")
                
            }
            )
            Text(slectedText)
        }
    }
}

#Preview {
    PickerBootCamp()
}
