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
                    .onMove(perform: move)
                    .listRowBackground(Color.red)
                    
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
                    .onMove(perform: moveVe(indices:newOffset:))
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
            .listStyle(InsetGroupedListStyle())
            .navigationTitle(Text("Grocery List"),
            ).navigationBarItems(
                leading: EditButton(),
                                 trailing:addButton
            )
            
        }
    }
    var addButton : some View{
        Button(
           action: {
               add()
},
           label: {
Text("Add")
})
    }
    
    private func deleteFruit( offsets: IndexSet) {
        fruits.remove(atOffsets: offsets)
    }

    private func deleteVegetable( offsets: IndexSet) {
        vegatables.remove(atOffsets: offsets)
    }
    func move (indices : IndexSet , newOffset : Int)
    {
        fruits.move(fromOffsets: indices, toOffset: newOffset)}
    func moveVe (indices : IndexSet , newOffset : Int)
    {
        vegatables.move(fromOffsets: indices, toOffset: newOffset)}
    func add(){
        fruits.append("Coconut")
        vegatables.append("Genger")
    }

    }

#Preview {
    ListBootCamp()
}
