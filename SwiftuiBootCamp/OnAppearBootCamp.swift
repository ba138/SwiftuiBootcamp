//
//  OnAppearBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 07/06/2026.
//

import SwiftUI

struct OnAppearBootCamp: View {
    @State var myText : String = "Starting Text"
    var body: some View {
        NavigationView{
            ScrollView {
                Text(myText)
            }
            .onAppear(perform: {
                myText = "Appearning text"
            })
            .navigationTitle(Text("ON Appear"))
        }
    }
}

#Preview {
    OnAppearBootCamp()
}
