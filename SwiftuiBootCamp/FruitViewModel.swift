//
//  FruitViewModel.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 10/06/2026.
//

import SwiftUI
import Combine

class FruitsViewModel: ObservableObject {
  @Published  var fruitArray : [FruitsModel] = [
    ]
    @Published var isLoading : Bool = false
    func getFruits()
    {
        let fruit1 = FruitsModel(name: "Grabes", count: 4)
        let fruit2 = FruitsModel(name: "Tamoto", count: 3)
        let fruit3 = FruitsModel(name: "Peaches", count: 12)
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline:.now()+3) {
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
        }
        isLoading = false

       

        
    }
    func delete(index :IndexSet){
        fruitArray.remove(atOffsets: index)
    }
}
