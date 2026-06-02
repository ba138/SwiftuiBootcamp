//
//  DataPickerBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 02/06/2026.
//

import SwiftUI

struct DataPickerBootCamp: View {
    @State var selectedDate : Date = Date()
    var body: some View {
        DatePicker("Please Select a Date".uppercased(), selection: $selectedDate
        )
    }
}

#Preview {
    DataPickerBootCamp()
}
