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
    @State private var showAlert = false
    @State private var alertMessage = ""
    var body: some View {
        NavigationStack {
            VStack(alignment : .leading){
            header
                Spacer()

                Fields(textFieldText: $textFieldText, password: $password)

                Spacer()
                Button {
                    if textValidation() {
                           alertMessage = "Login Successful"
                       } else {
                           alertMessage = "Invalid Email or Password"
                       }

                       showAlert = true
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
                .alert(alertMessage, isPresented: $showAlert) {
                    Button("OK") { }
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
    var header : some View{
        VStack(alignment: .leading, spacing: 20) {
            Image(systemName: "person.fill")
                .font(.system(size: 100))
                .frame(maxWidth: .infinity, alignment: .center)
            Text("Welocme Back please use you cred to login to your account")
            
                .font(.system(size: 24))
        }}
    func textValidation() -> Bool {
        
        if textFieldText.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
            return false
        }
        
        if password.isEmpty {
            return false
        }
        
        let emailRegex = #"^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$"#
        
        let isEmailValid = NSPredicate(format: "SELF MATCHES %@", emailRegex)
            .evaluate(with: textFieldText)
        
        if !isEmailValid {
            return false
        }
        
        if password.count < 6 {
            return false
        }
        
        return true
    }
}
struct Fields: View {
    @Binding var textFieldText: String
    @Binding var password: String

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Email")

            TextField("Enter your Email", text: $textFieldText)
                .padding()
                .background(Color.gray.opacity(0.3))
                .cornerRadius(10)

            Text("Password")

            SecureField("Enter your Password", text: $password)
                .padding()
                .background(Color.gray.opacity(0.3))
                .cornerRadius(10)

            Button("Forgot Password?") {

            }
            .frame(maxWidth: .infinity, alignment: .trailing)
        }
    }
}

#Preview {
    TextFieldBootCamp()
}
