//
//  ToggleBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 01/06/2026.
//

import SwiftUI

struct ToggleBootCamp: View {
    @State var isToggle : Bool = false
    var body: some View {
        Toggle(isOn: $isToggle) {
            Text("Notifications")
        }
        .toggleStyle(SwitchToggleStyle(tint:Color.red))
        .padding()
    }
}

#Preview {
    ToggleBootCamp()
}
