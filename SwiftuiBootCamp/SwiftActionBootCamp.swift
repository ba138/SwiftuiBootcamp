//
//  SwiftActionBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 17/06/2026.
//

import SwiftUI

struct SwiftActionBootCamp: View {
    @State var fruits : [String] = [
       "Apple",
       "Banana",
       "Orange",
       "Peach"
    ]
    var body: some View {
        List {
            ForEach(fruits, id: \.self) {
                Text($0.capitalized)
                    .swipeActions(edge: .trailing,
                                  allowsFullSwipe: true
                    ) {
                        Button("Archive") {
                            
                        }
                        
                        Button("Save") {
                            
                        }
                        .tint(.green)
                        Button("Selete") {
                            
                        }
                        .tint(.red)

                    }
            }
//            .onDelete(perform: deleteData)
        }
    }
    func deleteData(indexSet : IndexSet){
        
    }
}

#Preview {
    SwiftActionBootCamp()
}

