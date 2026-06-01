//
//  PickerBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 01/06/2026.
//

import SwiftUI

struct PickerBootCamp: View {
    @State var slectedText : String = "Home"
    @State var filters : [String] = [
        "Home",
        "Office",
        "Hotel",
        "Cabin"
    ]
    var body: some View {
        Menu {
            Picker(selection: $slectedText) {
                ForEach(filters, id: \.self) { option in
                    Text(option).tag(option)
                }
            } label: {
                EmptyView()
            }
        } label: {
            HStack {
                Text("Filter :")
                    .fontWeight(.bold)
                Text(slectedText)
                    .fontWeight(.bold)
            }
            .foregroundColor(.white)
            .padding(8)
            .background(Color.green)
            .cornerRadius(8)
        }
//        VStack {
//            Picker(selection: $slectedText,
//                   label: Text("Label"),
//                   content:     {
////                Text("1").tag("1")
////                Text("2").tag("2")
////                
////                Text("3").tag("3")
////                
////                Text("4").tag("4")
////                
////                Text("5").tag("5")
//                ForEach(18..<100) { index in
//                    Text("\(index)").tag("\(index)")
//
//                }
//                .pickerStyle(WheelPickerStyle())
//                
//            }
//            )
//            Text(slectedText)
//        }
    }
}

#Preview {
    PickerBootCamp()
}
