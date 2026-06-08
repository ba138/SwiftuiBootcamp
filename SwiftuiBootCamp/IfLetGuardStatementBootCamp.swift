//
//  IfLetGuardStatementBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 08/06/2026.
//

import SwiftUI

struct IfLetGuardStatementBootCamp: View {
    @State var displayText : String = ""
    var body: some View {
        
        NavigationView{
            VStack{
                Text("We are preticing Safe Coding!")
                Text(displayText)
                Spacer()
            }
            .navigationTitle(
                Text("Safe Coding")
                    .font(.title)
            )
            .onAppear{
                
            }
        }
    }
    func loadData()
    {
     displayText = "this is safetext"
    }
}

#Preview {
    IfLetGuardStatementBootCamp()
}
