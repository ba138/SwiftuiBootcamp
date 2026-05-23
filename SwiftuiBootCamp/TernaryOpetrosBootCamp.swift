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
    RoundedRectangle(cornerRadius: 25)
        .fill(isStart ? .red : .green)
        .frame(width: 200,height: 100)
        }
        Spacer()
    }
}

#Preview {
    TernaryOpetrosBootCamp()
}
