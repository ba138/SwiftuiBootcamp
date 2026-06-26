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
        }
    }
}

#Preview {
    ExampleCommit()
}
