//
//  TextEditerBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 31/05/2026.
//

import SwiftUI

struct TextEditerBootCamp: View {
    @State var text : String = "Enter your Bio"
    @State var myList : [String] = [
        
    ]
    @State var showAlert : Bool = false
    var body: some View {
        NavigationView{
            VStack{
                Spacer()

                TextEditor(text: $text)
                    .frame(
                        maxHeight: 250
                    )
                    .colorMultiply(Color.gray.opacity(0.3))
                    .cornerRadius(10)
                    .padding()
                
//                    .accentColor(Color.gray)
//                    .background(Color.gray.opacity(0.3))
                Spacer()
                Button {
                    let trimmed = text.trimmingCharacters(in: .whitespacesAndNewlines)
                    if !trimmed.isEmpty && trimmed != "Enter your Bio" {
                        myList.append(trimmed)
                        text = "" // clear after saving
                    } else {
                        showAlert = true
                    }
                } label: {
                    Text("Save")
                        .foregroundColor(.white)
                        
                        .padding()
                        .background(Color.green.cornerRadius(6))
                }
                .alert("Please Enter some thing", isPresented: $showAlert, actions: {
                    
                })
                ForEach(myList, id: \.self) { item in
                    Text(item)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                }
                Spacer()


            }
            .navigationTitle(Text("TextEditerBootCamp"))
        }
    }
}

#Preview {
    TextEditerBootCamp()
}
