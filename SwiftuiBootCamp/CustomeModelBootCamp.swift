//
//  CustomeModelBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 09/06/2026.
//

import SwiftUI
struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let firstName: String
    let lastName: String
    let phoneNumber: String
    let isVerfied : Bool
}

struct CustomeModelBootCamp: View {
    @State var users : [UserModel] = [
        UserModel(firstName: "Basit", lastName: "Ali", phoneNumber: "03160883492", isVerfied: true),
        UserModel(firstName: "Touseef", lastName: "Hussain", phoneNumber: "03165888595", isVerfied: false),
        UserModel(firstName: "Fayyaz", lastName: "Shah", phoneNumber: "123456789", isVerfied: false),
        UserModel(firstName: "Atizaz", lastName: "Shah", phoneNumber: "2345856", isVerfied: true)
    ]
    var body: some View {
        VStack{
            List(users) { user in
                HStack{
                    Circle()
                        .frame(width: 50,height: 50)
                    VStack(alignment: .leading) {
                        
                        Text("\(user.firstName) \(user.lastName)")
                            .font(.headline)
                        Text(user.phoneNumber)
                            .foregroundStyle(.secondary)
                            .font(.subheadline)
                    }
                    Spacer()
                    if user.isVerfied {
                        Image(systemName: "checkmark.seal.fill"
                                                )
                        .foregroundColor(.blue)
                    }
                    }
                    
            }
        }
    }
}

#Preview {
    CustomeModelBootCamp()
}
