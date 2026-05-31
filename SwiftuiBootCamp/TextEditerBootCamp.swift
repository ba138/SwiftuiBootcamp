//
//  TextEditerBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 31/05/2026.
//

import SwiftUI

struct TextEditerBootCamp: View {
    @State var text : String = ""
    var body: some View {
        NavigationView{
            VStack{
                TextEditor(text: $text)
                Button {
                    
                } label: {
                    Text("Save")
                        .foregroundColor(.white)
                        
                        .padding()
                        .background(Color.green.cornerRadius(6))
                }

            }
        }
    }
}

#Preview {
    TextEditerBootCamp()
}
