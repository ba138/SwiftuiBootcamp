//
//  SheetsBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 25/05/2026.
//

import SwiftUI

struct SheetsBootCamp: View {
    @State var showSheet : Bool = false
    @State var count : Int = 0 ;
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
                        SheetView(count: $count)
                    }

                }
            }

        }
    }
}
struct SheetView : View {
    @Binding var count : Int  ;
    var body: some View {
        VStack{
            Text("\(count)")
            HStack{
                Button {
                    count += 1;
                } label: {
                    Text("Increment")
                }
                Button {
                    if(count >= 1){
                        count -= 1;

                    }
                } label: {
                    Text("Decrement")
                }

            }
        }
    }
}
#Preview {
    SheetsBootCamp()
}
