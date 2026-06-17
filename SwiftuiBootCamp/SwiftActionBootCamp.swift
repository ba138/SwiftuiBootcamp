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
                    .swipeActions(edge: .leading,
                                  allowsFullSwipe: false
                    ) {
                        Button("Share") {
                            
                        }
                        
                        
                        Button("Delete") {
                            
                        }
                        .tint(.red)

                    }

                    .swipeActions(edge: .trailing,
                                  allowsFullSwipe: false
                    ) {
                        Button("Archive") {
                            
                        }
                        
                        Button("Save") {
                            
                        }
                        .tint(.green)
                       

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

