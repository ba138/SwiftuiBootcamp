//
//  SheetsBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 25/05/2026.
//

import SwiftUI

struct SheetsBootCamp: View {
    @State var showSheet: Bool = false
    @State var count: Int = 0
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
            .fullScreenCover(isPresented: $showSheet) {
                SheetView(count: $count)
            }
//            .sheet(isPresented: $showSheet) {
//                Button {
//                    
//                } label: {
//                    SheetView(count: $count)
//                }            }

        }
    }
}
struct SheetView : View {
    @Environment(\.dismiss) var dismiss
    @Binding var count: Int
    var body: some View {
        VStack {
            HStack {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "xmark")
                        .font(.largeTitle)
                }
                Spacer()
            }
            .padding([.top, .leading])

            Spacer()

            HStack{
                
                Text("\(count)")

            }
            Spacer()
            HStack(alignment:.center){
                Button {
                    count += 1
                } label: {
                    Text("Increment")
                }
                Button {
                    if count >= 1 {
                        count -= 1

                    }
                } label: {
                    Text("Decrement")
                }

            }
            Spacer()

        }
    }
}
#Preview {
  SheetsBootCamp()
}
