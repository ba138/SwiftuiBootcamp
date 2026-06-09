//
//  CustomeModelBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 09/06/2026.
//

import SwiftUI
struct UserModel {
    let userId : String = UUID()
        .uuidString
    let UserName : String
    let phoneNumber : Int
    let last name : String
    
}

struct CustomeModelBootCamp: View {
    @State var users : [String] = [
        "Basit",
        "Touseef",
        "Fayyaz",
        "Atizaz"
    ]
    var body: some View {
        VStack{
            List {
                ForEach(users, id: \.self) { name in
                    Text(name)
                }
            }
        }    }
}

#Preview {
    CustomeModelBootCamp()
}
