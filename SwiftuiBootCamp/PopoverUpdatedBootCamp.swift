//
//  PopoverUpdatedBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 24/06/2026.
//

import SwiftUI

struct PopoverUpdatedBootCamp: View {
    @State private var showSheet : Bool = false
    var body: some View {
        ZStack{
            Button("Click Here"
            ){
                showSheet.toggle()
            }
            .popover(isPresented: $showSheet) {
                Text("Hi there this is popover")
            }
        }
    }
}

#Preview {
    PopoverUpdatedBootCamp()
}
