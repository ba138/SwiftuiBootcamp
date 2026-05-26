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
        List{
            Section {
                ForEach(fruits, id:\.self) { index in
                    Text(index.capitalized)
                }
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

#Preview {
    ListBootCamp()
}
