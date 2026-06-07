//
//  OnAppearBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 07/06/2026.
//

import SwiftUI

struct OnAppearBootCamp: View {
    @State var myText : String = "Starting Text"
    @State var count : Int = 0
    var body: some View {
        NavigationView{
            ScrollView {
                Text(myText)
                LazyVStack{
                ForEach(0..<50) { index in
                RoundedRectangle(cornerRadius: 25)
                            .frame(
                                width: .infinity,
                                height: 200
                            )
                            .onAppear {
                                count += 1
                                
                            }
                    }
                }
                .padding()
            }
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline:
                        .now() + 4
                ){
                    myText = "Appearning text"

                }
                
            })
            .navigationTitle(Text("ON Appear Camp : \(count)"))
        }
    }
}

#Preview {
    OnAppearBootCamp()
}
