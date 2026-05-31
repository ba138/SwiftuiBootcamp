//
//  TextFieldBootCamp.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 31/05/2026.
//

import SwiftUI

struct TextFieldBootCamp: View {
    @State var textFieldText : String = ""
    @State var password : String = ""
    var body: some View {
        NavigationStack {
            VStack(alignment : .leading){
                Image(systemName: "person.fill")
                    .font(.system(size: 100))
                    .frame(maxWidth: .infinity, alignment: .center)
                Spacer()
                Text("Welocme Back please use you cred to login to your account")

                    .font(.system(size: 24))
                Spacer()

                Text("Email")
                TextField("Enter your Email",text: $textFieldText)
                    .padding()

                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                Text("Password")
                TextField("Enter your Password",text: $password
                )
                    .padding()

                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                Button {
                    
                } label: {
                    VStack(alignment :.trailing ) {
                        Text("Forget Password?")
                    }
                }.frame(maxWidth: .infinity, alignment: .trailing)

                Spacer()
                Button {
                    
                } label: {
                    Text("Login")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(
                            Color.green
                                .cornerRadius(10.0)
                        )
                        .foregroundColor(.white)
                        .font(.system(size: 24))
                }
                Spacer()
                HStack {
                    Text("Already have account?".capitalized)
                    NavigationLink {
                        RegisterView()
                    } label: {
                        Text("Register")
                            .font(.system(size: 18,weight: .bold))                
                    }
                }
                .frame(maxWidth: .infinity)


            }
        }
        .padding()
    }
}

#Preview {
    TextFieldBootCamp()
}
