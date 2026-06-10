//
//  StateAndObesverableObjectBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 10/06/2026.
//

import SwiftUI
import Combine
struct FruitsModel : Identifiable {
    let id : String = UUID().uuidString
    let name : String
    let count : Int
}
class FruitsViewModel: ObservableObject {
  @Published  var fruitArray : [FruitsModel] = [
    ]
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

struct StateAndObesverableObjectBootCamp: View {
//    @State var fruitArray : [FruitsModel] = [
//    ]
    @StateObject private var fruitViewModel = FruitsViewModel()
    var body: some View {
        List{
            ForEach(fruitViewModel.fruitArray) { fruit in
                HStack{
                    Text("\(fruit.count)")
                        .foregroundColor(.red)
                    Text(fruit.name)
                        .font(.headline)
                        .bold()
                }
            }.onDelete(perform: fruitViewModel.delete )
        }
        
        .onAppear{
            fruitViewModel  .getFruits()
        }
    }
   
}

#Preview {
    StateAndObesverableObjectBootCamp()
}
