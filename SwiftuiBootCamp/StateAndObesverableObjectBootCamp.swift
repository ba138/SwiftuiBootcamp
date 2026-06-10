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
