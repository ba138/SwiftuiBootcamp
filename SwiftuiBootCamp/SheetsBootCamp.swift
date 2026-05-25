//
//  SheetsBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 25/05/2026.
//

import SwiftUI

struct SheetsBootCamp: View {
    @State var showSheet : Bool = false
    var body: some View {
        ZStack{
            Color.green
                .ignoresSafeArea()
            Button {
                showSheet.toggle()
                
            } label: {
                Text("Press")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding(.all,10)

                    .background(.white)
                    .cornerRadius(10)

            }
            .sheet(isPresented: $showSheet) {
                VStack{
                    Button {
                        
                    } label: {
                        Text("Pressed button to close the sheet")
                    }

                }
            }

        }
    }
}

#Preview {
    SheetsBootCamp()
}
