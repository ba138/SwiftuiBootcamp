//
//  StateAndObesverableObjectBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 10/06/2026.
//

import SwiftUI
struct FruitsModel : Identifiable {
    let id : String = UUID().uuidString
    let name : String
    let count : Int
}

struct StateAndObesverableObjectBootCamp: View {
    @State var fruitArray : [FruitsModel] = [
        FruitsModel(name: "Apple", count: 5)
    ]
    var body: some View {
        List{
            ForEach(fruitArray) { fruit in
                HStack{
                    Text("\(fruit.count)")
                        .foregroundColor(.red)
                    Text(fruit.name)
                        .font(.headline)
                        .bold()
                }
            }.onDelete(perform:delete )
        }
        
        .onAppear{
            getFruits()
        }
    }
    func getFruits()
    {
        let fruit1 = FruitsModel(name: "Grabes", count: 4)
        let fruit2 = FruitsModel(name: "Tamoto", count: 3)
        let fruit3 = FruitsModel(name: "Peaches", count: 12)
        
        fruitArray.append(fruit1)
        fruitArray.append(fruit2)
        fruitArray.append(fruit3)

        
    }
    func delete(index :IndexSet){
        fruitArray.remove(atOffsets: index)
    }
}

#Preview {
    StateAndObesverableObjectBootCamp()
}
