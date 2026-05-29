//
//  ActionSheet.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 29/05/2026.
//

import SwiftUI

struct ActionSheetBootCamp: View {
    @State var showSheet : Bool = false
    var body: some View {
        Button(action: {
            showSheet.toggle()
        }, label: {
            Text("Click Me")
        })
        .actionSheet(isPresented: $showSheet, content: {
            ActionSheet(title: Text("hello i am action sheet",
        
                                   ))
        })
        
    }
}

#Preview {
    ActionSheetBootCamp()
}
