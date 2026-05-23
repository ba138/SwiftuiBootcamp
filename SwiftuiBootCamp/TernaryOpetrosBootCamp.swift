//
//  TernaryOpetrosBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 23/05/2026.
//

import SwiftUI

struct TernaryOpetrosBootCamp: View {
    @State var isStart : Bool = false
    var body: some View {
        VStack{
            
            Button("Button : \(isStart.description)"){
                isStart.toggle();
            }
            
            Text(isStart ? "Starting" : "Stop")
            RoundedRectangle(cornerRadius: isStart ? 25 :12)
        .fill(isStart ? .red : .green)
        .frame(width:isStart ? 200 : 300,
               height: isStart ? 200 :300)
        }
        Spacer()
    }
}

#Preview {
    TernaryOpetrosBootCamp()
}
