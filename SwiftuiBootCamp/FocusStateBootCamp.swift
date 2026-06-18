//
//  FocusStateBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 18/06/2026.
//

import SwiftUI

struct FocusStateBootCamp: View {
    @FocusState private var userFocus : Bool
    @State private var userName : String = ""
    @FocusState private var passwordFocus : Bool
    @State private var password : String = ""
    var body: some View {
        VStack{
            TextField("your Name here ...", text: $userName)
                .focused($userFocus)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(12)
            TextField("your Password here ...", text: $password)
                .focused($passwordFocus)
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
                    userFocus = false
                    passwordFocus = true
                }
                else{
                    userFocus = true
                    passwordFocus = false
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
