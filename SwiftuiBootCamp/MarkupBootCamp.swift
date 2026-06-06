//
//  MarkupBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 06/06/2026.
//

import SwiftUI

struct MarkupBootCamp: View {
    // MARK: PROPERTIES
    @State var fruits : [String] = [
        "Apple","Banana" , "grapes"
    ]
    @State var showAlert : Bool = false
        // MARK: BODY
    /*
     1) add Navigation View
     2) add Button for Alert
     3) add Foreeach for loop through Array and show text
     */
    var body: some View {
        NavigationView{
            VStack {
                Button("Alert") {
                    showAlert.toggle()
                }
                .alert(isPresented: $showAlert, content: {
                    getAlert(text: "this is the alert".capitalized)
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
    //MARK: FUNCTIONS
    func getAlert(text : String)-> Alert{
        return Alert(title: Text(text))
    }
}


#Preview {
    MarkupBootCamp()
}
