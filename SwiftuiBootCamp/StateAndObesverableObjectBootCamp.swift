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
    // stateobject for parent class
    // observeableobject for subview during passing arugments
    @StateObject  var fruitViewModel = FruitsViewModel()
    var body: some View {
        Group{
            if fruitViewModel.isLoading{
                ProgressView()
            }
                else{
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
                
                
            }
        }
    }
   
}

#Preview {
    StateAndObesverableObjectBootCamp()
}
