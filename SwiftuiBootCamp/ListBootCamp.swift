//
//  ListBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 26/05/2026.
//

import SwiftUI

struct ListBootCamp: View {
    @State var fruits : [String] = [
       "Apple",
       "Banana",
       "Orange",
       "Peach"
    ]
    @State var vegatables : [String] = [
        "ladyFinger",
        "Onion",
        "Patatos",
        "Tamottaos"
    ]
    
    var body: some View {
        NavigationView {
            List{
                Section {
                    ForEach(fruits, id:\.self) { index in
                        Text(index.capitalized)
                    }
                    .onDelete(perform: deleteFruit)
                } header: {
                    Text("Fruits")
                        .foregroundColor(.black)
                        .font(
                            .system(
                                size: 24,
                                weight: .bold
                            )
                            
                        )
                }
                
                Section {
                    ForEach(vegatables, id:\.self) { index in
                        Text(index.capitalized)
                    }
                    .onDelete(perform: deleteVegetable)
                } header: {
                    Text("Vegatables")
                        .foregroundColor(.black)
                        .font(
                            .system(
                                size: 24,
                                weight: .bold
                            )
                            
                        )
                }
            }
        }
    }
    
    private func deleteFruit( offsets: IndexSet) {
        fruits.remove(atOffsets: offsets)
    }

    private func deleteVegetable( offsets: IndexSet) {
        vegatables.remove(atOffsets: offsets)
    }
}

#Preview {
    ListBootCamp()
}
