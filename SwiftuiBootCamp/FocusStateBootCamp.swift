//
//  FocusStateBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 18/06/2026.
//

import SwiftUI

struct FocusStateBootCamp: View {
    enum Field: Hashable {
        case username
        case password
    }
    @State private var userName : String = ""
    @State private var password : String = ""
    @FocusState private var fieldFocus: Field?
    var body: some View {
        VStack{
            TextField("your Name here ...", text: $userName)
                .focused($fieldFocus, equals: .username)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(12)
            SecureField("your Password here ...", text: $password)
                .focused($fieldFocus, equals: .password)

                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(12)

            Button {
                let isNameValid = !userName.isEmpty
                let isPasswordValid = !password.isEmpty
                if isNameValid && isPasswordValid {
                    print("Is login")
                }
                else if (isNameValid){
                    fieldFocus = .password
                }
                else {
                    fieldFocus = .username
                }
            } label: {
                Text("Log In")
                    .frame(height: 45)
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.glassProminent)


        } .padding(20)
            
            
    }
}

#Preview {
    FocusStateBootCamp()
}

