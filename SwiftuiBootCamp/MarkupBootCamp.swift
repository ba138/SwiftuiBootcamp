//
//  MarkupBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 06/06/2026.
//

import SwiftUI

struct MarkupBootCamp: View {
    @State var fruits : [String] = [
        "Apple","Banana" , "grapes"
    ]
    @State var showAlert : Bool = false
    var body: some View {
        NavigationView{
            VStack {
                Button("Alert") {
                    showAlert.toggle()
                }
                .alert("this is alert", isPresented: $showAlert, actions: {
                    
                })
                .frame(maxWidth: .infinity,alignment: .topTrailing)
                Spacer()
                ForEach(fruits, id:\.self) { fruit in
                    Text(fruit)
                }
                Spacer()
            }
            
            .padding()
        }
        }
}


#Preview {
    MarkupBootCamp()
}
