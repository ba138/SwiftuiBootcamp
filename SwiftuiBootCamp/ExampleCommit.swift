//
//  ExampleCommit.swift
//  SwiftuiBootCamp
//
//  Created by Basit Ali on 26/06/2026.
//

import SwiftUI

struct ExampleCommit: View {
    @State private var password : String = ""
    @State private var email : String = ""

    
    var body: some View {
        VStack{
            Text("Please Login in to your account".capitalized)
                .font(.system(size: 24))
                .bold()
            TextField("Please Enter your email".capitalized, text: $email)
                .frame(width: .infinity,height: 55)
                .padding(10)
                .foregroundColor(.white)
                .background(Color.gray.opacity(0.3).cornerRadius(12))
                .padding(10)
            SecureField("Please Enter your Password".capitalized, text: $password)
                .frame(width: .infinity,height: 55)
                .padding(10)
                .foregroundColor(.white)
                .background(Color.gray.opacity(0.3).cornerRadius(12))
                .padding(10)
            Button {
                
            } label: {
                Text("Login")
                    .font(.system(size: 18))
                    .bold()
                    .frame(maxWidth: .infinity)
                    .frame(height: 55)
                    .background(Color.green.cornerRadius(12))
                    .padding()
            }


        }
    }
}

#Preview {
    ExampleCommit()
}
