//
//  PopOverBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 25/05/2026.
//
// Sheet
// Animation
// Transitions
import SwiftUI

struct PopOverBootCamp: View {
    @State var ShowNewScreen : Bool = false
    var body: some View {
        ZStack{
            Color.orange
                .ignoresSafeArea()
            VStack {
                Button {
                    ShowNewScreen.toggle()
                } label: {
                    Text("Button")
                        .font(.largeTitle)
                    
                    
                }
                Spacer()

            }
            .sheet(isPresented: $ShowNewScreen) {
                NewScreen()
            }


        }
    }
}
struct NewScreen : View {
    var body: some View {
        ZStack{
            Color.purple
                .ignoresSafeArea()
        }
    }
}

#Preview {
    PopOverBootCamp()
}
