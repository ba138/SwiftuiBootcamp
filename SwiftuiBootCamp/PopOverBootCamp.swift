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
//            .sheet(isPresented: $ShowNewScreen) {
//                NewScreen()
//            }
            // Method 2
            if ShowNewScreen {
                NewScreen()
                    .transition(.move(edge: .bottom))
                    .animation(.spring, value: ShowNewScreen)
                    .padding(.top,100)
            }


        }
    }
}
struct NewScreen : View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        ZStack(alignment : .topLeading){
            Color.purple
                .ignoresSafeArea()
            Button {
                dismiss()
                
            } label: {
                Image(systemName: "xmark")
                    .font(.largeTitle)
                    .padding(20)
            }

        }
    }
}

#Preview {
    PopOverBootCamp()
}
