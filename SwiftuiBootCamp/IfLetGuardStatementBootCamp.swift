//
//  IfLetGuardStatementBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 08/06/2026.
//

import SwiftUI

struct IfLetGuardStatementBootCamp: View {
    @State var displayText : String? = nil
    var body: some View {
        
        NavigationView{
            VStack{
                Text("We are preticing Safe Coding!")
                if let text = displayText{
                    Text(text)

                }
                Spacer()
            }
            .navigationTitle(
                Text("Safe Coding")
                    .font(.title)
            )
            .onAppear{
                loadData()
            }
        }
    }
    func loadData()
    {
        DispatchQueue.main.asyncAfter(deadline: .now()+3, execute: {
            displayText = "this is safetext"

        })
    }
}

#Preview {
    IfLetGuardStatementBootCamp()
}
