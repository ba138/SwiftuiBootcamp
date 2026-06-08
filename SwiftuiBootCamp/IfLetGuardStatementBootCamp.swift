//
//  IfLetGuardStatementBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 08/06/2026.
//

import SwiftUI

struct IfLetGuardStatementBootCamp: View {
    @State var userId : String? = "user123456"
    @State var displayText : String? = nil
    @State var isLoading : Bool = false
    var body: some View {
        
        NavigationView{
            VStack{
                Text("We are preticing Safe Coding!")
                if let text = displayText{
                    Text(text)
                    
                }
                if isLoading {
                    ProgressView()
                }
                Spacer()
            }
            .navigationTitle(
                Text("Safe Coding")
                    .font(.title)
            )
            .onAppear{
                loadData2()
            }
        }
    }
    func loadData()
    {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now()+3, execute: {
            displayText = "this is safetext"
            isLoading = false
            
        })
    }
    func loadData2()
    {
        guard let newId = userId else {
            displayText = "User Id is null"
            return
        }
            //  if user id is null remain body of function run
        displayText = "User has id"
       
    }
}

#Preview {
    IfLetGuardStatementBootCamp()
}
