//
//  PopoverUpdatedBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 24/06/2026.
//

import SwiftUI

struct PopoverUpdatedBootCamp: View {
    @State private var showSheet : Bool = false
    @State private var options : [String] = [
        "Happy there",
        "Sad there",
        "Angery there"
    ]
    var body: some View {
        ZStack{
            Button("Click Here"
            ){
                showSheet.toggle()
            }
            .popover(isPresented: $showSheet,
                     attachmentAnchor: .point(.top),
                     content: {
                ForEach(options,id: \.self ,content: { mood in
                    VStack(spacing : 20){
                        Button {
                            
                        } label: {
                            Text(mood)
                        }
                        if mood != options.last{
                            Divider()

                        }                    }
                })
                
                .presentationCompactAdaptation(.popover)
                .padding(20)

            })
//            .popover(isPresented: $showSheet) {
//                Text("Hi there this is popover")
//                    .presentationCompactAdaptation(.sheet)
//            }
        }
    }
}

#Preview {
    PopoverUpdatedBootCamp()
}
