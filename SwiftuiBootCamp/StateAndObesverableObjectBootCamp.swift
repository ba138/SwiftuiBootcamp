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
            }
        }    }
}

#Preview {
    StateAndObesverableObjectBootCamp()
}
