//
//  TransitionBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 24/05/2026.
//

import SwiftUI

struct TransitionBootCamp: View {
    @State var isShow : Bool = false
    var body: some View {
        ZStack(alignment : .bottom){
            VStack{
                Button {
                    isShow.toggle()
                } label: {
                    Text("Button")
                }
                Spacer()

            }
            if isShow {
                RoundedRectangle(cornerRadius: 20)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                   
                    .ignoresSafeArea()
                    .transition(.slide)
                    .animation(.easeInOut)
            }
        }.ignoresSafeArea()
    }
    
}

#Preview {
    TransitionBootCamp()
}
