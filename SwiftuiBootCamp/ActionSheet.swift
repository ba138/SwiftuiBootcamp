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
            showsheet()
        })
        
    }
    func showsheet() -> ActionSheet {
        let button1 : ActionSheet.Button = .default(Text("button1"))
        let button2 : ActionSheet.Button = .destructive(Text("button2"))
        let button3 : ActionSheet.Button = .cancel(Text("cancle"))
        return ActionSheet(
            title: Text("This is the title"),
        message: Text("Text for the Action sheet"),
            buttons : [
                button1,
                button2,
                button3,
            ]
        )
    }
}

#Preview {
    ActionSheetBootCamp()
}
