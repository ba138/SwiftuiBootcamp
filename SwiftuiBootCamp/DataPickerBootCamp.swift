//
//  DataPickerBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 02/06/2026.
//

import SwiftUI

struct DataPickerBootCamp: View {
    @State var selectedDate : Date = Date()
    
    private var allowedRange: ClosedRange<Date> {
        var calendar = Calendar.current
        calendar.timeZone = .current
        var startComponents = DateComponents()
        startComponents.year = 2018
        startComponents.month = 1
        startComponents.day = 1
        var endComponents = DateComponents()
        endComponents.year = 2026
        endComponents.month = 12
        endComponents.day = 31
        let startDate = calendar.date(from: startComponents) ?? Date()
        let endDate = calendar.date(from: endComponents) ?? Date()
        return startDate...endDate
    }
    var dateFromter : DateFormatter {
        let formter = DateFormatter()
        formter.dateStyle = .short
        formter.timeStyle = .short
        return formter
    }
    var body: some View {
        NavigationStack {
            VStack {
//                DatePicker("Please Select a Date".uppercased(), selection: $selectedDate
//                )
//                .datePickerStyle(
//                    //            WheelDatePickerStyle()
//                    GraphicalDatePickerStyle()
//                )
//                DatePicker(
//                    "Selecte a Date", selection: $selectedDate, displayedComponents: [
////                        .date
//                        .hourAndMinute
//                    ]
//                
//                )."padding()
                Text("Selected Date :")
                Text(dateFromter.string(from: selectedDate))
                
                DatePicker(
                    "Please Select a Date".uppercased(),
                    selection: $selectedDate,
                    in: allowedRange,
                    displayedComponents: .date
                )
                .datePickerStyle(CompactDatePickerStyle())
                .padding(.horizontal)
                
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
