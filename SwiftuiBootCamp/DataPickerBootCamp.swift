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
        NavigationStack {
            VStack {
                DatePicker("Please Select a Date".uppercased(), selection: $selectedDate
                )
                .datePickerStyle(
                    //            WheelDatePickerStyle()
                    GraphicalDatePickerStyle()
                )
                NavigationLink(destination: RegisterView()) {
                    Text("Next")
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(
                            Color.red
                                .cornerRadius(10)
                        )
                        .foregroundColor(.white)
                        .padding()
                }
                
            }
        }
        
        
    }
}

#Preview {
    DataPickerBootCamp()
}
